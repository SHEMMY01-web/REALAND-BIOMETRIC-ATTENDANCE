/**
 * Realand A-L355 / ZD2911 Biometric Terminal → ESP32 Standalone Cloud Bridge
 * ─────────────────────────────────────────────────────────────────────────
 * Runs entirely on an ESP32 microcontroller without requiring a PC.
 *
 * Hardware:
 *   - Any standard ESP32 development board (ESP-WROOM-32, NodeMCU-32S, etc.)
 *   - Powered via 5V USB wall adapter near the Realand terminal or router.
 *
 * How it works:
 *   1. Connects to the local Wi-Fi network.
 *   2. Listens for raw UDP datagrams on port 5000 / 11898.
 *   3. Validates the 32-byte Realand binary GLog packet (Magic: 0x77EDC45C).
 *   4. IMMEDIATELY echoes the exact 32 bytes back to the terminal (ACK).
 *   5. Unpacks the 64-bit UserID (DIN) and packed bitfield timestamp/metadata.
 *   6. Dispatches an HTTPS POST JSON payload to your Supabase Edge Function / API.
 *
 * Dependencies:
 *   - ArduinoJson library (install via Library Manager)
 */

#include <WiFi.h>
#include <WiFiUdp.h>
#include <HTTPClient.h>
#include <WiFiClientSecure.h>
#include <ArduinoJson.h>

// ─── Wi-Fi Configuration ──────────────────────────────────────────────────
const char* WIFI_SSID     = "YOUR_WIFI_SSID";
const char* WIFI_PASSWORD = "YOUR_WIFI_PASSWORD";

// ─── Network & Protocol Configuration ─────────────────────────────────────
const uint16_t UDP_PORT   = 11898;            // Port configured on Realand terminal
const uint32_t GLOG_MAGIC = 0x77EDC45C;       // Bytes: 0x5C, 0xC4, 0xED, 0x77 (LE)
const size_t   GLOG_LEN   = 32;

// ─── Cloud API Configuration ──────────────────────────────────────────────
const char* SUPABASE_URL  = "https://YOUR_PROJECT_ID.supabase.co/functions/v1/attendance-log";
const char* SUPABASE_KEY  = "YOUR_SUPABASE_ANON_OR_SERVICE_KEY"; // Optional if auth required

WiFiUDP udp;
uint8_t packetBuffer[64];

// Verify mode lookup table
const char* getVerifyModeLabel(uint8_t mode) {
  switch (mode) {
    case 0: return "Check in";
    case 1: return "Clock in";
    case 2: return "Clock out";
    case 3: return "Customer in";
    case 4: return "Customer out";
    case 5: return "Out";
    case 6: return "In";
    case 12: return "Button open";
    case 13: return "Software open";
    case 14: return "Keep open";
    case 15: return "Keep close";
    case 31: return "Illegal operation";
    default: return "Access Event";
  }
}

// Action type bitmask (Fingerprint, Password, Card, ID)
String getActionLabel(uint8_t action) {
  String label = "";
  if (action & 0x01) label += "F";
  if (action & 0x02) label += (label.length() ? "+P" : "P");
  if (action & 0x04) label += (label.length() ? "+C" : "C");
  if (action & 0x08) label += (label.length() ? "+I" : "I");
  return label.length() ? label : "None";
}

void connectWiFi() {
  if (WiFi.status() == WL_CONNECTED) return;
  Serial.print("Connecting to Wi-Fi");
  WiFi.mode(WIFI_STA);
  WiFi.begin(WIFI_SSID, WIFI_PASSWORD);
  int attempts = 0;
  while (WiFi.status() != WL_CONNECTED && attempts < 30) {
    delay(500);
    Serial.print(".");
    attempts++;
  }
  if (WiFi.status() == WL_CONNECTED) {
    Serial.println("\n[Wi-Fi] Connected!");
    Serial.print("[Wi-Fi] ESP32 IP Address: ");
    Serial.println(WiFi.localIP());
  } else {
    Serial.println("\n[Wi-Fi] Connection failed. Will retry...");
  }
}

void forwardToCloud(uint64_t userId, String timeStr, String macStr, uint8_t verify, uint8_t action, uint16_t deviceId) {
  if (WiFi.status() != WL_CONNECTED) {
    Serial.println("[Cloud] Wi-Fi down. Cannot forward punch.");
    return;
  }

  WiFiClientSecure client;
  client.setInsecure(); // Skip certificate validation for lightweight embedded TLS
  HTTPClient http;

  if (http.begin(client, SUPABASE_URL)) {
    http.addHeader("Content-Type", "application/json");
    if (strlen(SUPABASE_KEY) > 0) {
      http.addHeader("apikey", SUPABASE_KEY);
      http.addHeader("Authorization", String("Bearer ") + SUPABASE_KEY);
    }

    StaticJsonDocument<512> doc;
    JsonArray array = doc.to<JsonArray>();
    JsonObject obj = array.createNestedObject();

    char userIdStr[24];
    sprintf(userIdStr, "%llu", userId);

    obj["UserID"]      = userIdStr;
    obj["TimeString"]  = timeStr;
    obj["DeviceSN"]    = macStr;
    obj["DeviceID"]    = deviceId;
    obj["VerifyMode"]  = verify;
    obj["VerifyLabel"] = getVerifyModeLabel(verify);
    obj["Action"]      = action;
    obj["ActionLabel"] = getActionLabel(action);

    String requestBody;
    serializeJson(doc, requestBody);

    Serial.print("[Cloud] Posting to Supabase: ");
    Serial.println(requestBody);

    int httpCode = http.POST(requestBody);
    if (httpCode > 0) {
      Serial.printf("[Cloud] HTTP Response code: %d\n", httpCode);
    } else {
      Serial.printf("[Cloud] HTTP POST failed, error: %s\n", http.errorToString(httpCode).c_str());
    }
    http.end();
  }
}

void setup() {
  Serial.begin(115200);
  delay(1000);
  Serial.println("\n==========================================");
  Serial.println("  Realand Biometric ESP32 Cloud Bridge");
  Serial.println("==========================================");

  connectWiFi();

  // Start listening on UDP port
  udp.begin(UDP_PORT);
  Serial.printf("[UDP] Listening on 0.0.0.0:%d\n", UDP_PORT);
}

void loop() {
  // Reconnect Wi-Fi if dropped
  if (WiFi.status() != WL_CONNECTED) {
    connectWiFi();
  }

  int packetSize = udp.parsePacket();
  if (packetSize > 0) {
    int bytesRead = udp.read(packetBuffer, sizeof(packetBuffer));

    // ── 1. Security Guard: Validate packet length and magic header ──
    if (bytesRead != GLOG_LEN) {
      return; // Discard malformed packets
    }

    uint32_t header = (uint32_t)packetBuffer[0] |
                      ((uint32_t)packetBuffer[1] << 8) |
                      ((uint32_t)packetBuffer[2] << 16) |
                      ((uint32_t)packetBuffer[3] << 24);

    if (header != GLOG_MAGIC) {
      return; // Discard unauthorized scanner packets
    }

    IPAddress remoteIP = udp.remoteIP();
    uint16_t remotePort = udp.remotePort();

    // ── 2. Immediate 32-Byte Verbatim ACK Echo ──
    // Clears the Realand terminal internal retry buffer instantly
    udp.beginPacket(remoteIP, remotePort);
    udp.write(packetBuffer, GLOG_LEN);
    udp.endPacket();
    Serial.printf("[UDP] Echoed 32-byte ACK to %s:%d\n", remoteIP.toString().c_str(), remotePort);

    // ── 3. Parse 64-bit UserID (DIN) from Bytes 8-15 (Little Endian) ──
    uint64_t userId = 0;
    for (int i = 0; i < 8; i++) {
      userId |= ((uint64_t)packetBuffer[8 + i]) << (i * 8);
    }

    // ── 4. Unpack Bitfield Structure (Bytes 16-23) ──
    uint16_t year   = (packetBuffer[16] & 0x7F) + 2000;
    uint8_t  month  = ((packetBuffer[16] | (packetBuffer[17] << 8)) >> 7) & 0x0F;
    uint8_t  day    = ((packetBuffer[17] | (packetBuffer[18] << 8)) >> 3) & 0x1F;
    uint8_t  action = packetBuffer[18] & 0x0F;
    uint8_t  verify = ((packetBuffer[18] | (packetBuffer[19] << 8)) >> 4) & 0x1F;
    uint16_t devId  = ((packetBuffer[20] | (packetBuffer[21] << 8) | (packetBuffer[22] << 16)) >> 1) & 0x3FFF;
    uint8_t  hour   = ((packetBuffer[21] | (packetBuffer[22] << 8)) >> 7) & 0x1F;
    uint8_t  minute = ((packetBuffer[22] | (packetBuffer[23] << 8)) >> 4) & 0x3F;
    uint8_t  second = (packetBuffer[23] >> 2) & 0x3F;

    // ── 5. Format Device MAC Address (Bytes 24-29) ──
    char macStr[18];
    sprintf(macStr, "%02X:%02X:%02X:%02X:%02X:%02X",
            packetBuffer[24], packetBuffer[25], packetBuffer[26],
            packetBuffer[27], packetBuffer[28], packetBuffer[29]);

    // Format ISO-8601 Timestamp
    char timeStr[25];
    sprintf(timeStr, "%04d-%02d-%02dT%02d:%02d:%02d", year, month, day, hour, minute, second);

    Serial.println("\n------------------------------------------");
    Serial.printf("  User ID (DIN) : %llu\n", userId);
    Serial.printf("  Timestamp     : %s\n", timeStr);
    Serial.printf("  Device MAC    : %s\n", macStr);
    Serial.printf("  Verify Mode   : %s (%d)\n", getVerifyModeLabel(verify), verify);
    Serial.printf("  Action        : %s (%d)\n", getActionLabel(action).c_str(), action);
    Serial.println("------------------------------------------");

    // ── 6. Asynchronously Forward to Cloud Backend ──
    forwardToCloud(userId, String(timeStr), String(macStr), verify, action, devId);
  }

  delay(10);
}
