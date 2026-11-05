/**
 * Realand A-L355 UDP Cloud Bridge → Supabase (Production Edition)
 * ─────────────────────────────────────────────────────────────
 * Protocol: Realand CS-Desktop 2960/2911 binary UDP push
 * Source:   Decoded from official SDK RealTimeFrm.pas
 * Target:   Wispbyte Cloud Container (Port 11898)
 *
 * Hardened for 24/7 public cloud deployment:
 *  - Anti-reflection security guard (validates packets BEFORE acknowledging)
 *  - Exact 32-byte verbatim ACK echo (clears Realand hardware buffer)
 *  - 64-bit UserID and packed bitfield extraction
 *  - Standard 6-byte IEEE 802 MAC address formatting
 *  - RTC clock validation & ISO timestamp sanitization (prevents PostgreSQL 22007)
 *  - Rolling SHA-256 deduplication with automatic memory leak pruning
 *  - Persistent disk-backed offline replay queue (zero punch data loss)
 *  - Top-level exception isolation & graceful shutdown handlers
 */

import dgram from 'dgram';
import { createHash } from 'crypto';
import { promises as fs } from 'fs';
import path from 'path';
import { fileURLToPath } from 'url';

// Paths
const __filename = fileURLToPath(import.meta.url);
const __dirname = path.dirname(__filename);
const QUEUE_FILE = path.join(__dirname, 'offline-queue.json');

// Auto-load optional local .env if present (zero dependencies, git-ignored)
try {
  const envContent = await fs.readFile(path.join(__dirname, '.env'), 'utf-8');
  for (const line of envContent.split('\n')) {
    const trimmed = line.trim();
    if (!trimmed || trimmed.startsWith('#')) continue;
    const eqIdx = trimmed.indexOf('=');
    if (eqIdx !== -1) {
      const key = trimmed.slice(0, eqIdx).trim();
      const val = trimmed.slice(eqIdx + 1).trim().replace(/^['"]|['"]$/g, '');
      if (process.env[key] === undefined) process.env[key] = val;
    }
  }
} catch (_) {}

// ─── Configuration ──────────────────────────────────────────────────────────
const PORT = Number(process.env.SERVER_PORT || process.env.PORT || 11898);
const SUPABASE_URL = process.env.SUPABASE_URL || '';
const SUPABASE_KEY = process.env.SUPABASE_SERVICE_KEY || process.env.SUPABASE_ANON_KEY || process.env.SUPABASE_KEY || '';

// Protocol constants (from RealTimeFrm.pas)
const GLOG_PREFIX = 0x77edc45c; // Magic header: bytes 5C C4 ED 77
const GLOG_LEN = 32;          // Expected binary packet length

// Deduplication configuration
const DEDUP_WINDOW_MS = 30_000; // 30 seconds
const MAX_DEDUP_ENTRIES = 2_000;
const recentHashes = new Map(); // hash → timestamp

// Memory buffer for offline queue
let offlineQueue = [];
let isFlushingQueue = false;

// Verify mode labels (from CommonUnt.pas / ConvertObject.cs IOMode)
const VERIFY_MODES = {
  0: 'Check in', 1: 'Clock in', 2: 'Clock out',
  3: 'Customer in', 4: 'Customer out', 5: 'Out',
  6: 'In', 7: 'User defined 1', 8: 'User defined 2',
  12: 'Button open', 13: 'Software open', 14: 'Keep open',
  15: 'Keep close', 16: 'Auto mode', 17: 'Open in',
  18: 'Open out', 19: 'Overtime open alarm',
  20: 'Forced open alarm', 21: 'Antihijack alarm',
  22: 'Input action 1', 23: 'Input action 2',
  24: 'Output action 1', 25: 'Output action 2',
  26: 'Invalid time', 27: 'Invalid date',
  31: 'Illegal operation'
};

// Action type bitmask labels (from ConvertObject.cs GLogType)
const ACTION_FLAGS = ['F', 'P', 'C', 'I']; // Fingerprint, Password, Card, ID

// ─── Packet Validation (Anti-Reflection Security Guard) ─────────────────────
function isValidGLogPacket(buf) {
  if (!Buffer.isBuffer(buf) || buf.length !== GLOG_LEN) return false;
  return buf.readUInt32LE(0) === GLOG_PREFIX;
}

// ─── Timestamp Validation & Sanitization ───────────────────────────────────
function buildSafeTimestamp(year, month, day, hour, minute, second) {
  // Guard against uninitialized or corrupted RTC chip registers
  const isValidDate =
    year >= 2000 && year <= 2099 &&
    month >= 1 && month <= 12 &&
    day >= 1 && day <= 31 &&
    hour >= 0 && hour <= 23 &&
    minute >= 0 && minute <= 59 &&
    second >= 0 && second <= 59;

  if (isValidDate) {
    const yStr = String(year);
    const mStr = String(month).padStart(2, '0');
    const dStr = String(day).padStart(2, '0');
    const hStr = String(hour).padStart(2, '0');
    const minStr = String(minute).padStart(2, '0');
    const sStr = String(second).padStart(2, '0');

    // Test parse to catch invalid dates like Feb 31st
    const candidate = `${yStr}-${mStr}-${dStr}T${hStr}:${minStr}:${sStr}Z`;
    const parsed = Date.parse(candidate);
    if (!isNaN(parsed)) {
      return candidate.replace('Z', '');
    }
  }

  // Fallback to bridge server UTC time if device RTC is corrupt
  const fallback = new Date().toISOString().replace('Z', '');
  console.warn(`  ⚠️  Invalid RTC clock (${year}-${month}-${day} ${hour}:${minute}:${second}). Fallback: ${fallback}`);
  return fallback;
}

// ─── Binary Parsing (exact port of RealTimeFrm.pas bitfield logic) ──────────
function parseGLogPacket(buf) {
  // UserID: bytes 8–15, UINT64 little-endian
  const userIdBigInt = buf.readBigUInt64LE(8);
  const userId = userIdBigInt.toString();

  // --- Bitfield: bytes 16–23 ---
  const year = (buf[16] & 0x7f) + 2000;
  const month = ((buf[16] | (buf[17] << 8)) >>> 7) & 0x0f;
  const day = ((buf[17] | (buf[18] << 8)) >>> 3) & 0x1f;
  const action = buf[18] & 0x0f;
  const verify = ((buf[18] | (buf[19] << 8)) >>> 4) & 0x1f;
  const jobCode = ((buf[19] | (buf[20] << 8)) >>> 1) & 0x7f;
  const antipassback = buf[20] & 0x01;
  const deviceId = ((buf[20] | (buf[21] << 8) | (buf[22] << 16)) >>> 1) & 0x3fff;
  const hour = ((buf[21] | (buf[22] << 8)) >>> 7) & 0x1f;
  const minute = ((buf[22] | (buf[23] << 8)) >>> 4) & 0x3f;
  const second = (buf[23] >>> 2) & 0x3f;

  // Safe ISO timestamp
  const clockStr = buildSafeTimestamp(year, month, day, hour, minute, second);

  // Standard 6-byte IEEE 802 MAC address
  const deviceMac = buf.subarray(24, 30).toString('hex').toUpperCase().match(/.{2}/g).join(':');

  // Human-readable labels
  const actionStr = ACTION_FLAGS.filter((_, i) => (action >>> i) & 1).join('+') || 'None';
  const verifyStr = VERIFY_MODES[verify] || `Unknown(${verify})`;

  return {
    userId,
    deviceId,
    deviceMac,
    year, month, day, hour, minute, second,
    clockStr,
    action,
    actionStr,
    verify,
    verifyStr,
    jobCode,
    antipassback
  };
}

// ─── Deduplication (with deterministic memory cap) ──────────────────────────
function isDuplicate(buf) {
  const hash = createHash('sha256').update(buf).digest('hex');
  const now = Date.now();

  // Enforce memory limit: prune oldest if map exceeds ceiling
  if (recentHashes.size >= MAX_DEDUP_ENTRIES) {
    const oldestKey = recentHashes.keys().next().value;
    if (oldestKey) recentHashes.delete(oldestKey);
  }

  if (recentHashes.has(hash) && (now - recentHashes.get(hash)) < DEDUP_WINDOW_MS) {
    return true;
  }

  recentHashes.set(hash, now);
  return false;
}

// Periodic cleanup of expired deduplication hashes
const dedupCleaner = setInterval(() => {
  const now = Date.now();
  for (const [k, ts] of recentHashes) {
    if (now - ts > DEDUP_WINDOW_MS) {
      recentHashes.delete(k);
    }
  }
}, 60_000);
dedupCleaner.unref();

// ─── Offline Queue Persistence ──────────────────────────────────────────────
async function loadOfflineQueue() {
  try {
    const data = await fs.readFile(QUEUE_FILE, 'utf-8');
    offlineQueue = JSON.parse(data);
    if (Array.isArray(offlineQueue) && offlineQueue.length > 0) {
      console.log(`📦 Loaded ${offlineQueue.length} unsynced punch(es) from offline storage.`);
      triggerQueueFlush();
    }
  } catch (err) {
    if (err.code !== 'ENOENT') {
      console.error(`⚠️  Failed to read offline queue: ${err.message}`);
    }
    offlineQueue = [];
  }
}

async function saveOfflineQueue() {
  try {
    await fs.writeFile(QUEUE_FILE, JSON.stringify(offlineQueue, null, 2), 'utf-8');
  } catch (err) {
    console.error(`⚠️  Failed to persist offline queue to disk: ${err.message}`);
  }
}

function enqueueOffline(item) {
  offlineQueue.push(item);
  console.log(`  💾 Saved punch to offline queue (Queue size: ${offlineQueue.length})`);
  saveOfflineQueue();
}

// ─── Supabase Sync with Exponential Backoff ─────────────────────────────────
async function executeHttpRequest(payload) {
  if (!SUPABASE_URL) {
    console.warn('  ⚠️  SUPABASE_URL is not set. Skipping cloud sync (set process.env.SUPABASE_URL).');
    return { ok: false, status: 0, body: 'SUPABASE_URL not configured' };
  }

  const headers = { 'Content-Type': 'application/json' };
  if (SUPABASE_KEY) {
    headers['apikey'] = SUPABASE_KEY;
    headers['Authorization'] = `Bearer ${SUPABASE_KEY}`;
  }

  const response = await fetch(SUPABASE_URL, {
    method: 'POST',
    headers,
    body: JSON.stringify(payload),
    signal: AbortSignal.timeout(10_000)
  });

  const bodyText = await response.text();
  return { ok: response.ok, status: response.status, body: bodyText };
}

async function syncToSupabase(payload, retries = 3) {
  for (let attempt = 1; attempt <= retries; attempt++) {
    try {
      const res = await executeHttpRequest(payload);

      if (res.ok) {
        console.log(`  ✅ Supabase sync OK (${res.status})`);
        return true;
      }

      console.error(`  ⚠️  Supabase HTTP ${res.status}: ${res.body}`);

      // Stop retrying on deterministic 4xx client errors (except 429 Rate Limit)
      if (res.status >= 400 && res.status < 500 && res.status !== 429) {
        return false;
      }
    } catch (err) {
      console.error(`  ❌ Sync attempt ${attempt}/${retries} failed: ${err.message}`);
    }

    if (attempt < retries) {
      const backoff = Math.min(1000 * Math.pow(2, attempt - 1), 8000);
      console.log(`  ⏳ Retrying in ${backoff}ms...`);
      await new Promise(r => setTimeout(r, backoff));
    }
  }

  return false;
}

// ─── Background Queue Flusher (Runs every 30s) ──────────────────────────────
async function triggerQueueFlush() {
  if (isFlushingQueue || offlineQueue.length === 0) return;
  isFlushingQueue = true;

  try {
    while (offlineQueue.length > 0) {
      const current = offlineQueue[0];
      console.log(`🔄 Flushing queued punch (UserID ${current[0]?.UserID || 'unknown'})...`);

      const success = await syncToSupabase(current, 2);
      if (success) {
        offlineQueue.shift();
        await saveOfflineQueue();
      } else {
        console.warn(`  ⏸️  Supabase still unreachable. Pausing offline queue flush.`);
        break;
      }
    }
  } catch (err) {
    console.error(`⚠️  Queue flusher error: ${err.message}`);
  } finally {
    isFlushingQueue = false;
  }
}

const queueInterval = setInterval(triggerQueueFlush, 30_000);
queueInterval.unref();

// ─── UDP Server Setup ───────────────────────────────────────────────────────
const server = dgram.createSocket('udp4');

server.on('listening', () => {
  const addr = server.address();
  console.log(`\n🚀 ══════════════════════════════════════════════════════`);
  console.log(`   Realand A-L355 UDP Cloud Bridge (Production)`);
  console.log(`   Listening on 0.0.0.0:${addr.port}`);
  console.log(`   Protocol: CS-Desktop 2960/2911 Binary Push`);
  console.log(`   ACK Mode: Verified 32-Byte Verbatim Echo`);
  console.log(`   Target:   ${SUPABASE_URL || '(SUPABASE_URL not set - running in offline/local test mode)'}`);
  console.log(`   Offline Storage: Enabled (${QUEUE_FILE})`);
  console.log(`══════════════════════════════════════════════════════════\n`);
});

server.on('message', async (msg, rinfo) => {
  try {
    const ts = new Date().toISOString();

    // ── Security Guard: Ignore non-Realand packets without echoing ──
    // Prevents server from functioning as an open UDP reflection amplifier
    if (!isValidGLogPacket(msg)) {
      // Silently discard malformed scanner packets
      return;
    }

    console.log(`\n📥 [${ts}] Packet from ${rinfo.address}:${rinfo.port} (${msg.length} bytes)`);
    console.log(`   Raw: ${msg.toString('hex')}`);

    // ── Step 1: Immediately ACK verified Realand packet ──
    // Exact pattern from RealTimeFrm.pas line 121: clears device hardware buffer
    const ackBuf = Buffer.from(msg);
    server.send(ackBuf, 0, ackBuf.length, rinfo.port, rinfo.address, (err) => {
      if (err) {
        console.error(`   ❌ ACK send failed: ${err.message}`);
      } else {
        console.log(`   📤 ACK sent (${ackBuf.length}-byte echo)`);
      }
    });

    // ── Step 2: Deduplication ──
    if (isDuplicate(msg)) {
      console.log(`   🔁 Duplicate packet detected within ${DEDUP_WINDOW_MS / 1000}s. Skipping sync.`);
      return;
    }

    // ── Step 3: Parse the binary payload ──
    const record = parseGLogPacket(msg);

    console.log(`   👤 User ID (DIN): ${record.userId}`);
    console.log(`   🏢 Device ID (DN): ${record.deviceId}`);
    console.log(`   🖧  Device MAC: ${record.deviceMac}`);
    console.log(`   🕐 Clock: ${record.clockStr}`);
    console.log(`   🔑 Verify: ${record.verifyStr} (${record.verify})`);
    console.log(`   📋 Action: ${record.actionStr} (${record.action})`);
    if (record.jobCode) console.log(`   💼 JobCode: ${record.jobCode}`);
    if (record.antipassback) console.log(`   🚫 Antipassback: YES`);

    // ── Step 4: Construct Supabase payload ──
    const payload = [{
      UserID: record.userId,
      TimeString: record.clockStr,
      DeviceSN: record.deviceMac,
      DeviceID: record.deviceId,
      VerifyMode: record.verify,
      VerifyLabel: record.verifyStr,
      Action: record.action,
      ActionLabel: record.actionStr,
      JobCode: record.jobCode,
      RawHex: msg.toString('hex')
    }];

    // ── Step 5: Sync with fallback to persistent offline queue ──
    const synced = await syncToSupabase(payload);
    if (!synced) {
      console.warn(`  ⚠️  Initial sync failed. Enqueuing punch to offline storage...`);
      enqueueOffline(payload);
    }
  } catch (err) {
    console.error(`💥 Unexpected error processing packet from ${rinfo.address}:${rinfo.port}:`, err);
  }
});

server.on('error', (err) => {
  console.error(`\n💥 UDP Socket Error:\n${err.stack}`);
  // Do not crash the entire container on transient socket errors; restart listener if needed
  try {
    server.close();
  } catch (_) {}
  setTimeout(() => {
    console.log('🔄 Rebinding UDP socket...');
    server.bind(PORT, '0.0.0.0');
  }, 2000);
});

// ─── Process Crash Isolation & Graceful Shutdown ────────────────────────────
process.on('uncaughtException', (err) => {
  console.error(`💥 Uncaught Exception:`, err);
});

process.on('unhandledRejection', (reason, promise) => {
  console.error(`💥 Unhandled Rejection at:`, promise, 'reason:', reason);
});

async function gracefulShutdown(signal) {
  console.log(`\n🛑 ${signal} received. Persisting state and shutting down...`);
  try {
    await saveOfflineQueue();
    server.close(() => {
      console.log('✅ Socket closed cleanly. Exiting.');
      process.exit(0);
    });
  } catch (err) {
    console.error('Error during shutdown:', err);
    process.exit(1);
  }
}

process.on('SIGINT', () => gracefulShutdown('SIGINT'));
process.on('SIGTERM', () => gracefulShutdown('SIGTERM'));

// ─── Bootstrap ──────────────────────────────────────────────────────────────
await loadOfflineQueue();
server.bind(PORT, '0.0.0.0');