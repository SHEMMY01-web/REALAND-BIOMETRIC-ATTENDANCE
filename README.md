# Realand Biometric UDP Cloud Bridge 🚀

> The definitive open-source bridge, protocol decoder, and cloud synchronization gateway for **Realand biometric attendance & access control terminals** (A-L355, ZD2911, and all CS-Desktop 2960/2911 protocol devices).

[![License: MIT](https://img.shields.io/badge/License-MIT-yellow.svg)](https://opensource.org/licenses/MIT)
[![Node.js](https://img.shields.io/badge/Node.js-18%2B-green.svg)](https://nodejs.org)
[![ESP32](https://img.shields.io/badge/Hardware-ESP32%20Compatible-red.svg)](https://www.espressif.com/)
[![Supabase](https://img.shields.io/badge/Cloud-Supabase%20%7C%20PostgreSQL%20%7C%20REST-blue.svg)](https://supabase.com)
[![Protocol](https://img.shields.io/badge/Protocol-32--Byte%20UDP%20Binary%20Push-purple.svg)]()

---

## Table of Contents
1. [What is This Project?](#1-what-is-this-project)
2. [The Reverse-Engineered Binary Protocol Specification](#2-the-reverse-engineered-binary-protocol-specification)
   - [Packet Architecture (32 Bytes)](#21-packet-architecture-32-bytes)
   - [Bitfield Unpacking Mathematics](#22-bitfield-unpacking-mathematics)
   - [Lookup Tables: Verification & Action Modes](#23-lookup-tables-verification--action-modes)
3. [The Critical ACK Discovery (Why Past Bridges Failed)](#3-the-critical-ack-discovery-why-past-bridges-failed)
4. [Hardware Configuration (Setting Up Your Realand Terminal)](#4-hardware-configuration-setting-up-your-realand-terminal)
5. [Deployment Guide 1: Laptop & Desktop (Linux, Windows, macOS)](#5-deployment-guide-1-laptop--desktop-linux-windows-macos)
   - [Quick Start](#51-quick-start)
   - [Running as a Background Service](#52-running-as-a-background-service-linux-windows-macos)
6. [Deployment Guide 2: Microcontroller Edge Bridge (ESP32)](#6-deployment-guide-2-microcontroller-edge-bridge-esp32)
7. [Deployment Guide 3: Free & Low-Cost Cloud Hosting (The UDP Reality)](#7-deployment-guide-3-free--low-cost-cloud-hosting-the-udp-reality)
8. [Reliability & Resilience Engine](#8-reliability--resilience-engine)
9. [Backend Integration (Supabase Edge Function & PostgreSQL)](#9-backend-integration-supabase-edge-function--postgresql)
10. [Full SDK Dissection & Future Capabilities](#10-full-sdk-dissection--future-capabilities)
11. [Troubleshooting & FAQ](#11-troubleshooting--faq)

---

## 1. What is This Project?

Realand biometric terminals (such as the **A-L355**, **ZD2911**, and related series) are high-reliability, affordable fingerprint and RFID attendance scanners. However, their official integration ecosystem is trapped in legacy Windows desktop applications (**C# .NET**, **Delphi 7**, **VB6**) that require a physical PC running proprietary COM DLLs (`Riss.Devices.dll`).

In modern environments, businesses and universities need attendance data **streamed live into web apps, databases, and modern cloud platforms** (like **Supabase**, PostgreSQL, Firebase, or custom REST APIs) without requiring an operator to manually click "Download Logs" on a Windows machine.

### The Problem
- Realand terminals in "RealTime / Cloud" mode push raw binary datagrams over **UDP**.
- Cloud web services (Vercel, AWS Lambda, Supabase) only speak **HTTP/HTTPS**.
- Previous community reverse-engineering efforts sent incorrect ACK acknowledgments (e.g. 4-byte HTTP codes or 8-byte guesses), which causes the terminal to:
  1. Beep an error tone on every punch.
  2. Retransmit the same punch every 5 seconds indefinitely.
  3. Lock up its internal memory buffer.

### The Solution
This repository provides:
1. **The complete, byte-level specification** of Realand's proprietary 32-byte binary protocol decoded directly from the original Delphi and C# SDK source files.
2. **A battle-tested Node.js UDP Bridge** (`server.js`) with immediate 32-byte verbatim echo ACKs, anti-reflection DDoS protection, persistent offline disk queueing, and automatic Supabase cloud forwarding.
3. **A standalone ESP32 Arduino C++ Firmware Sketch** (`examples/esp32/realand_esp32_bridge.ino`) allowing a $4 microcontroller plugged into the wall to act as a 24/7 headless cloud gateway.
4. **Comprehensive multi-platform deployment guides** across Linux, Windows, macOS, Raspberry Pi, and Cloud VPS hosts.

---

## 2. The Reverse-Engineered Binary Protocol Specification

Realand real-time push events are transmitted as fixed-length **32-byte binary datagrams** over UDP (`sizeof(GLog) = 32`).

### 2.1 Packet Architecture (32 Bytes)

```
Offset (Bytes)   Length   Data Type       Field Name / Purpose
─────────────────────────────────────────────────────────────────────────────
[00 – 03]        4 B      UINT32 (LE)     Magic Prefix: 0x77EDC45C (5C C4 ED 77)
[04 – 07]        4 B      UINT32 (LE)     Packet Checksum / Reserved
[08 – 15]        8 B      UINT64 (LE)     User ID (DIN) — Biometric Identity Number
[16 – 19]        4 B      UINT32 (LE)     Packed Bitfield A (Date, Action, Verify)
[20 – 23]        4 B      UINT32 (LE)     Packed Bitfield B (Time, Device ID, APB)
[24 – 29]        6 B      Raw Bytes       Device Hardware MAC Address (IEEE 802)
[30 – 31]        2 B      Raw Bytes       Padding / Alignment
─────────────────────────────────────────────────────────────────────────────
Total: 32 Bytes
```

### 2.2 Bitfield Unpacking Mathematics

The timestamp and operational metadata are packed across two 32-bit bitfields (Bytes 16–23). Below are the exact bitwise extraction formulas ported directly from Delphi `RealTimeFrm.pas`:

```c
// ── Packed Bitfield A (Bytes 16 to 19) ──────────────────────────────────
Year        = (Byte[16] & 0x7F) + 2000;                      // 7 bits (0..127) -> base 2000
Month       = ((Byte[16] | (Byte[17] << 8)) >> 7) & 0x0F;    // 4 bits (1..12)
Day         = ((Byte[17] | (Byte[18] << 8)) >> 3) & 0x1F;    // 5 bits (1..31)
Action      = Byte[18] & 0x0F;                               // 4 bits (auth method bitmask)
Verify      = ((Byte[18] | (Byte[19] << 8)) >> 4) & 0x1F;    // 5 bits (verify / status mode)
JobCode     = ((Byte[19] | (Byte[20] << 8)) >> 1) & 0x7F;    // 7 bits (0..127)

// ── Packed Bitfield B (Bytes 20 to 23) ──────────────────────────────────
Antipassback = Byte[20] & 0x01;                              // 1 bit  (0 = No, 1 = Yes)
DeviceID    = ((Byte[20] | (Byte[21] << 8) | (Byte[22] << 16)) >> 1) & 0x3FFF; // 14 bits (DN)
Hour        = ((Byte[21] | (Byte[22] << 8)) >> 7) & 0x1F;    // 5 bits (0..23)
Minute      = ((Byte[22] | (Byte[23] << 8)) >> 4) & 0x3F;    // 6 bits (0..59)
Second      = (Byte[23] >> 2) & 0x3F;                        // 6 bits (0..59)
```

In JavaScript / Node.js, `readBigUInt64LE(8)` is used to guarantee that large numeric employee IDs (DINs up to $2^{64}-1$) do not lose precision from 32-bit integer truncation.

### 2.3 Lookup Tables: Verification & Action Modes

#### Verification Mode (`IOMode` / `GetGLogVerify`)
| Code | Meaning | Description |
|:---:|:---|:---|
| `0` | **Check in** | Standard attendance morning check-in |
| `1` | **Clock in** | Shift start |
| `2` | **Clock out** | Shift end |
| `3` | **Customer in** | Visitor / guest entry |
| `4` | **Customer out** | Visitor / guest exit |
| `5` | **Out** | Break / duty out |
| `6` | **In** | Break / duty in |
| `12` | **Button open** | Access control physical exit button triggered |
| `13` | **Software open** | Door unlocked remotely via command |
| `14` | **Keep open** | Access control passage mode active |
| `15` | **Keep close** | Lock down mode |
| `16` | **Auto mode** | Automatic schedule state |
| `20` | **Forced open alarm** | Door forced open without authentication |
| `21` | **Antihijack alarm** | Duress fingerprint / code entered |
| `31` | **Illegal operation** | Unregistered biometric or unauthorized access |

#### Action Type Bitmask (`GLogType`)
| Bit | Flag | Meaning |
|:---:|:---:|:---|
| Bit 0 | `F` | **Fingerprint** verified |
| Bit 1 | `P` | **Password / PIN** entered |
| Bit 2 | `C` | **RFID Card** scanned |
| Bit 3 | `I` | **User ID** manually typed |

*Example:* A value of `0x03` indicates `F+P` (Dual authentication: Fingerprint + Password).

---

## 3. The Critical ACK Discovery (Why Past Bridges Failed)

The most elusive bug in Realand reverse-engineering was the hardware acknowledgment requirement.

In the official Delphi SDK file (`RealTimeFrm.pas` line 121, documented in [`docs/PROTOCOL_SPEC.md`](docs/PROTOCOL_SPEC.md)), the exact logic was identified:

```pascal
FUDPServer.SendBuffer(ABinding.PeerIP, ABinding.PeerPort, lReceiveData[0], GLogLen);
```

### Key Insights:
1. **The ACK is an exact 32-byte verbatim reflection of the incoming packet.** The terminal does not expect a custom confirmation code or an HTTP response. It expects to receive its exact 32-byte packet echoed back to its source IP and port.
2. **Immediate ACK:** The ACK must be sent back within milliseconds. If your bridge waits for a slow cloud HTTP request before replying, the terminal's hardware timer expires, causing an audible error beep and initiating infinite retransmission.
3. **Anti-Reflection DDoS Guard:** Because this bridge echoes UDP datagrams, it includes a strict check verifying `msg.length === 32` and `msg.readUInt32LE(0) === 0x77EDC45C`. Any random internet port scan or malformed packet is dropped immediately, preventing the server from acting as an open reflection amplifier.

---

## 4. Hardware Configuration (Setting Up Your Realand Terminal)

To configure your physical Realand terminal (A-L355 / ZD2911):

1. **Enter Terminal Menu**:
   - Press `[ M/OK ]` on the keypad (authenticate with Admin fingerprint/card if locked).
2. **Configure Network / Comm**:
   - Go to **Comm** (or **Network**) → **Ethernet** / **Wi-Fi**.
   - Assign a Static IP (e.g. `192.168.1.50`) or enable DHCP.
   - Note: The terminal and your bridge host must be on the same subnet (or reachable via routing).
3. **Configure Server / Cloud Push**:
   - Go to **Comm** → **Server** (or **Cloud Settings** / **PC Connection**).
   - Set **Server IP** to the IP address of your bridge machine (e.g., your local PC `192.168.1.100`, your ESP32 `192.168.1.105`, or your Cloud VPS IP).
   - Set **Server Port** to match your bridge port (default: `11898`, `8000`, or `5000`).
   - Set **Realtime / Push Mode** to `ON` (or `Auto Push: Yes`).
   - Set **Comm Key** to `0` (default).
4. **Test the Connection**:
   - Place an enrolled finger on the sensor.
   - The terminal should say *"Thank you"* and beep a clean single confirmation. Your bridge terminal will immediately output:
   ```text
   📥 [2026-11-05T14:48:10.123Z] Packet from 192.168.1.50:5005 (32 bytes)
   📤 ACK sent (32-byte echo)
   👤 User ID (DIN): 1
   🕐 Clock: 2026-11-05T14:48:10
   🔑 Verify: Check in (0)
   📋 Action: F (1)
   ✅ Supabase sync OK (200)
   ```

---

## 5. Deployment Guide 1: Laptop & Desktop (Linux, Windows, macOS)

### 5.1 Quick Start

Requires **Node.js 18.0.0 or later** (uses native `fetch` and ES modules; zero external dependencies required).

```bash
# Clone the repository
git clone https://github.com/SHEMMY01-web/REALAND-BIOMETRIC-ATTENDANCE.git realand-bridge
cd realand-bridge

# Check code syntax
npm run check

# Start the bridge (default port 11898)
npm start
```

#### Customizing Environment Variables
You can pass environment variables inline or via `.env`:
```bash
PORT=8000 \
SUPABASE_URL=https://your-project.supabase.co/functions/v1/attendance-log \
SUPABASE_SERVICE_KEY=your-supabase-service-key \
npm start
```

---

### 5.2 Running as a Background Service (Linux, Windows, macOS)

#### Option A: Cross-Platform via PM2 (Recommended)
PM2 works identically across **Linux, macOS, and Windows**:

```bash
# Install PM2 globally
npm install -g pm2

# Start the bridge using our included ecosystem config
pm2 start ecosystem.config.cjs

# Make PM2 resurrect on system reboot
pm2 startup
pm2 save
```

#### Option B: Linux Systemd Daemon (Ubuntu, Debian, Raspberry Pi)
We provide [`realand-bridge.service`](realand-bridge.service):

```bash
# 1. Edit the service file with your username and working directory
sudo cp realand-bridge.service /etc/systemd/system/

# 2. Reload systemd and enable service
sudo systemctl daemon-reload
sudo systemctl enable realand-bridge
sudo systemctl start realand-bridge

# 3. Check live logs
sudo journalctl -u realand-bridge -f
```

*Firewall configuration (Linux):*
```bash
sudo ufw allow 11898/udp
```

#### Option C: Windows Service via NSSM
1. Download [NSSM (Non-Sucking Service Manager)](https://nssm.cc/).
2. Run in Administrator PowerShell:
   ```powershell
   nssm install RealandBridge "C:\Program Files\nodejs\node.exe" "C:\path\to\realand-bridge\server.js"
   nssm set RealandBridge AppDirectory "C:\path\to\realand-bridge"
   nssm start RealandBridge
   ```
3. Allow UDP in Windows Defender Firewall:
   - In Advanced Security Firewall → Inbound Rules → New Rule → Port → **UDP** → Port **11898** → Allow Connection.

#### Option D: macOS Launchd Daemon
Create `~/Library/LaunchAgents/com.realand.bridge.plist`:
```xml
<?xml version="1.0" encoding="UTF-8"?>
<!DOCTYPE plist PUBLIC "-//Apple//DTD PLIST 1.0//EN" "http://www.apple.com/DTDs/PropertyList-1.0.dtd">
<plist version="1.0">
<dict>
    <key>Label</key>
    <string>com.realand.bridge</string>
    <key>ProgramArguments</key>
    <array>
        <string>/usr/local/bin/node</string>
        <string>/Users/youruser/realand-bridge/server.js</string>
    </array>
    <key>RunAtLoad</key>
    <true/>
    <key>KeepAlive</key>
    <true/>
</dict>
</plist>
```
Load with: `launchctl load ~/Library/LaunchAgents/com.realand.bridge.plist`

---

## 6. Deployment Guide 2: Microcontroller Edge Bridge (ESP32)

If you don't want a computer running 24/7 in your office or lab, you can deploy the bridge onto an **ESP32 microcontroller** for ~$4.

The complete Arduino C++ firmware sketch is located in [`examples/esp32/realand_esp32_bridge.ino`](examples/esp32/realand_esp32_bridge.ino).

```
┌──────────────────┐           ┌────────────────────┐          ┌───────────────────────┐
│ Realand A-L355   │  UDP 32B  │   ESP32 (Wi-Fi)    │  HTTPS   │  Supabase Cloud /     │
│ Biometric Scanner├──────────►│  (Wall-Plugged $4) ├─────────►│  PostgreSQL Database  │
│                  │◄──────────┤                    │  JSON    │                       │
└──────────────────┘  32B Echo └────────────────────┘          └───────────────────────┘
                        ACK
```

### Setup Instructions:
1. Open the Arduino IDE (or PlatformIO).
2. Install the **ESP32 Board Package** (`Tools` → `Board Manager` → search `esp32` by Espressif).
3. Install **ArduinoJson** (`Sketch` → `Include Library` → `Manage Libraries` → search `ArduinoJson`).
4. Open [`examples/esp32/realand_esp32_bridge.ino`](examples/esp32/realand_esp32_bridge.ino).
5. Edit your Wi-Fi credentials and API URL:
   ```cpp
   const char* WIFI_SSID     = "Your_WiFi_Name";
   const char* WIFI_PASSWORD = "Your_WiFi_Password";
   const uint16_t UDP_PORT   = 11898;
   const char* SUPABASE_URL  = "https://your-project.supabase.co/functions/v1/attendance-log";
   ```
6. Connect your ESP32 via USB and click **Upload**.
7. Open Serial Monitor at **115200 baud** to see the assigned IP address.
8. In the Realand Terminal menu, set **Server IP** to this ESP32 IP address.

---

## 7. Deployment Guide 3: Free & Low-Cost Cloud Hosting (The UDP Reality)

The fundamental challenge with hosting this bridge in the cloud is that **95% of "free tier" cloud platforms only support HTTP/TCP web traffic**. They utilize reverse proxies (Cloudflare, Nginx, Envoy) that terminate HTTP/TLS connections and **completely drop raw incoming UDP datagrams**.

Even **Fly.io** does not work out-of-the-box on their free tier:
- Fly.io requires a credit/debit card upfront to register.
- Dedicated public IPv4 addresses cost **\$2/month** on Fly.io (their free shared IPs only proxy HTTP/TLS). Because the Realand A-L355 terminal requires a raw numeric IPv4 address and speaks raw UDP, Fly.io's free shared routing cannot accept or route the packets.

---

### Category 1: Free & Budget Container Hosts (What We Considered & Deployed)

| Host | Architecture | UDP Capability | Cost / Verification | Renewal Cycle |
|---|---|---|---|---|
| **Wispbyte (What we deployed)** | Pterodactyl Container | Direct unproxied public IPv4 (`78.154.103.49`) with open port (`11898`). Accepts raw UDP. | **100% Free** (No credit card needed) | Requires clicking "Renew" every 14 days in dashboard |
| **HidenCloud** | Pterodactyl Container | Containerized host with open UDP port allocations. | **100% Free** (No credit card needed) | Requires clicking "Renew" every 7 days |
| **ESP32 / ESP8266 Microcontroller** | Local Edge Hardware | Runs on local LAN (`192.168.1.x`), listens on UDP port `11898` / `8000`, pushes to Supabase via HTTPS. | **~\$4 one-time** hardware cost | **Permanent Zero-Maintenance** (No cards, no renewal buttons, zero cloud downtime) |

---

### Category 2: Legitimate Free Cloud VMs (True Virtual Machines with Open UDP)

If you want a permanent cloud VM with a dedicated public IPv4 address and unrestricted raw UDP access:

1. **Oracle Cloud Infrastructure (OCI) "Always Free"**:
   - **Specs:** Up to 4 ARM Ampere cores with 24 GB RAM (`VM.Standard.A1.Flex`) or 2 AMD micro-instances (`VM.Standard.E2.1.Micro`).
   - **UDP Support:** Full root access with `iptables` / Security Lists — open any UDP port (including standard port `8000` or `11898`).
   - **Advantages:** 100% free forever, permanent static public IPv4, zero renewal buttons.
   - **Requirements:** Requires a valid credit/debit card for identity verification (KYC) during signup. Compute availability can be scarce in popular regions.

2. **Google Cloud Platform (GCP) Free Tier (`e2-micro`)**:
   - **Specs:** 1 `e2-micro` instance (in US regions: `us-central1`, `us-east1`, or `us-west1`).
   - **UDP Support:** Full UDP support on an external public IP via VPC firewall rules.
   - **Requirements:** Credit card required at registration. Egress traffic beyond 1 GB/month can incur nominal charges.

3. **AWS Free Tier (`t2.micro` / `t3.micro`)**:
   - **Specs:** 750 hours/month of EC2 compute.
   - **Requirements:** Only free for the first 12 months, credit card required, and public IPv4 charges apply unless monitored under free allowance.

---

### Category 3: Popular Cloud Platforms That CANNOT Be Used (No Raw UDP Support)

Many popular modern PaaS platforms are incompatible with the Realand biometric terminal:

| Platform | Why It Fails for the Realand UDP Bridge |
|---|---|
| **Render** | Only supports HTTP/HTTPS and WebSockets over TCP. Inbound UDP datagrams are completely dropped. |
| **Railway** | Provides TCP proxying, but has no support for inbound raw UDP traffic. |
| **Koyeb** | Edge routing layer only routes HTTP/TCP traffic. Inbound UDP is not supported. |
| **Vercel / Netlify** | Serverless architectures designed exclusively for stateless HTTP requests. Cannot maintain a persistent UDP datagram socket. |
| **Heroku** | Router only accepts incoming HTTP/HTTPS and WebSockets over TCP on standard ports 80 and 443. |
| **Replit / Glitch** | Proxies container ports through an HTTP reverse proxy. Raw external UDP sockets cannot receive packets. |

> **Summary:** Because the scanner speaks raw, unencrypted UDP over a custom port, container hosts (like **Wispbyte**), local edge microcontrollers (**ESP32**), or true VPS instances (**Oracle Always Free**) are the proven paths to accept attendance packets without an expensive paid cloud load balancer.

---

## 8. Reliability & Resilience Engine

The Node.js bridge in [`server.js`](server.js) contains enterprise hardening features:

```
[Incoming UDP Datagram]
       │
       ▼
[Anti-Reflection Guard] ──(Not 32B or Invalid Magic)──► Drop silently
       │
       ├─────────────────────────────────────────┐
       ▼                                         ▼
[Immediate 32-Byte Echo ACK]            [Rolling Deduplication]
(Hardware buffer cleared < 5ms)         (30s SHA-256 rolling memory cache)
                                                 │
                                                 ▼
                                        [RTC Clock Sanitizer]
                                        (Validates hardware date 2000-2099)
                                                 │
                                                 ▼
                                     [Supabase HTTP Sync]
                                                 │
                                ┌────────────────┴────────────────┐
                                ▼                                 ▼
                           (Success 200)                    (HTTP Error / Offline)
                                │                                 │
                                ▼                                 ▼
                         [Punch Saved]                 [Offline Disk Queue]
                                                        (offline-queue.json)
                                                                  │
                                                                  ▼
                                                      [Background Flusher (30s)]
```

- **Zero Data Loss with Disk Queue:** If the internet drops or your database experiences downtime, punches are automatically serialized to `offline-queue.json`. A background worker flushes them automatically as soon as connectivity resumes.
- **Deduplication Filter:** Realand terminals occasionally re-transmit packets if local Wi-Fi drops packets. A deterministic rolling 30-second SHA-256 cache prevents duplicate database rows.
- **RTC Clock Fallback:** Biometric hardware RTC coin batteries occasionally die, resetting the clock to `2000-00-00` or corrupt dates. The sanitizer catches corrupt dates before sending them to PostgreSQL (preventing `22007 invalid datetime format` errors).

---

## 9. Backend Integration (Supabase Edge Function & PostgreSQL)

### 9.1 Edge Function Payload
The bridge dispatches a clean JSON array to your HTTP webhook:
```json
[
  {
    "UserID": "1",
    "TimeString": "2026-11-05T14:48:10",
    "DeviceSN": "00:1A:4B:92:14:8A",
    "DeviceID": 1,
    "VerifyMode": 0,
    "VerifyLabel": "Check in",
    "Action": 1,
    "ActionLabel": "F"
  }
]
```

### 9.2 Biometric User Directory (`lab_members` Directory)
Because the biometric hardware only transmits the numeric `UserID` (`DIN`), use a PostgreSQL directory table to map numeric IDs to full names and lab roles:

```sql
CREATE TABLE IF NOT EXISTS public.lab_members (
  id UUID PRIMARY KEY DEFAULT gen_random_uuid(),
  device_user_id TEXT UNIQUE NOT NULL,      -- Biometric ID (e.g. '1', '640')
  full_name TEXT NOT NULL,                  -- Person's full name
  role TEXT NOT NULL DEFAULT 'student',     -- Role (e.g. 'admin', 'staff', 'student')
  department TEXT DEFAULT 'Innovation Lab',
  is_active BOOLEAN NOT NULL DEFAULT true
);
```

### 9.3 Auto-Enrichment Database Trigger
This trigger automatically decorates incoming raw attendance punches with the member's full name and role, and suppresses duplicates:

```sql
CREATE OR REPLACE FUNCTION public.filter_duplicate_punches()
RETURNS trigger AS $$
DECLARE
  v_member RECORD;
BEGIN
  -- Prevent double punches within 2 minutes
  IF EXISTS (
    SELECT 1 FROM public.attendance_logs
    WHERE device_user_id = NEW.device_user_id
    AND punch_time >= NEW.punch_time - interval '2 minutes'
    AND punch_time <= NEW.punch_time + interval '2 minutes'
  ) THEN 
    RETURN null; 
  END IF;

  -- Resolve person's name and role from lab_members directory
  SELECT full_name, role INTO v_member
  FROM public.lab_members
  WHERE device_user_id = NEW.device_user_id AND is_active = true
  LIMIT 1;

  IF FOUND THEN
    NEW.user_name := v_member.full_name;
    NEW.user_role := v_member.role;
  ELSE
    NEW.user_name := 'Unregistered (' || NEW.device_user_id || ')';
    NEW.user_role := 'Guest';
  END IF;

  RETURN NEW;
END;
$$ LANGUAGE plpgsql SECURITY DEFINER SET search_path = public;
```

---

## 10. Extracted Protocol Specification & Future Capabilities

All protocol definitions, bitfield mathematics, and verification mode constants have been extracted into clean, open-source documentation in [`docs/PROTOCOL_SPEC.md`](docs/PROTOCOL_SPEC.md). The original vendor binary packages are excluded to respect proprietary licensing.

Here is an architectural map of what can be built using the reverse-engineered protocol specifications:

| Component | Capability / What Can Be Built |
|---|---|
| **Real-time Push** | **What this bridge implements:** Instant UDP capture & cloud forwarding. |
| **Historical Log Pull** | Polling mode: Download all historical punches over TCP socket when terminal is offline. |
| **User Enrollment** | Remotely register/delete fingerprints, RFID cards, and PIN passwords from a web dashboard. |
| **Door Access Control** | Manage time zones, user groups, holiday schedules, and trigger electronic door strikes. |
| **Scheduled Bell / Alarms** | Configure up to 24 scheduled bell chime alarms for shift/class changes. |
| **LCD Screen Messages** | Send custom Unicode text messages to display on the terminal screen for specific users. |
| **Custom Sound Upload** | Upload custom `.wav` voice prompts (22.05 kHz, 16-bit Mono, $\le 75$ KB). |
| **Time Synchronization** | Sync the terminal's internal RTC clock with NTP / internet standard time. |

---

## 11. Troubleshooting & FAQ

#### Q: The terminal beeps an error tone and sends the same punch every 5 seconds.
**A:** The terminal is not receiving the 32-byte verbatim ACK echo.
- Ensure your bridge is using the updated code in [`server.js`](server.js) (not the old 4-byte or 8-byte code).
- Verify that your firewall allows inbound and outbound UDP on your chosen port.
- Check that the bridge machine's IP has not changed.

#### Q: The bridge displays `EADDRINUSE: address already in use`.
**A:** Another process is holding the UDP port. Find and terminate it:
```bash
# On Linux / macOS:
sudo lsof -i :11898
# Or kill previous node process:
killall node

# On Windows:
netstat -ano | findstr :11898
taskkill /PID <PID> /F
```

#### Q: Punches stopped arriving after changing Wi-Fi networks.
**A:** Realand terminals cache the gateway ARP entry.
1. Check the IP assigned to your PC / ESP32 on the new network (`ip addr` or `ipconfig`).
2. Update the **Server IP** in the Realand terminal menu (`Menu` → `Comm` → `Server IP`).
3. Power-cycle the Realand terminal once.

---

## License

This project is licensed under the [MIT License](LICENSE).  
SDK reference components and documentation are property of Realand Bio-Technology Co., Ltd. and are included for interoperability research and hardware integration.
