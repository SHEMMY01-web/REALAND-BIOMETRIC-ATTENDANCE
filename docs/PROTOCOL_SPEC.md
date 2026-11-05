# Realand Biometric Terminal Protocol Specification (CS-Desktop 2960/2911)

> Extracted and documented for open-source interoperability and cloud bridge engineering.

---

## 1. Physical Layer & Network Framing

- **Transport:** UDP (User Datagram Protocol)
- **Standard Ports:** `11898`, `8000`, or `5000` (configurable in terminal menu)
- **Packet Size:** Exactly 32 bytes (`sizeof(GLog) = 32`)
- **Byte Order:** Little-Endian for all numeric integers

---

## 2. 32-Byte Binary Packet Architecture

```
Byte Offset    Length    Type            Field Description
─────────────────────────────────────────────────────────────────────────────
[00 – 03]      4 B       UINT32 (LE)     Magic Prefix: 0x77EDC45C (Bytes: 5C C4 ED 77)
[04 – 07]      4 B       UINT32 (LE)     Packet Checksum / Reserved
[08 – 15]      8 B       UINT64 (LE)     User ID (DIN) — Biometric Identity Number
[16 – 19]      4 B       UINT32 (LE)     Packed Bitfield A (Timestamp & Metadata)
[20 – 23]      4 B       UINT32 (LE)     Packed Bitfield B (Time, DeviceID, APB)
[24 – 29]      6 B       Raw Bytes       Hardware MAC Address (IEEE 802)
[30 – 31]      2 B       Raw Bytes       Padding / Alignment Bytes
─────────────────────────────────────────────────────────────────────────────
```

---

## 3. Bitfield Unpacking Mathematics

The timestamp and verification metadata are packed across two 32-bit bitfields (Bytes 16–23).

### C Struct Definition (from Realand SDK)
```c
// Bytes 16-19 (UINT32 Little-Endian)
typedef struct {
    unsigned int Year        : 7;  // bits 0..6   (0..127, Base Year: 2000)
    unsigned int Month       : 4;  // bits 7..10  (1..12)
    unsigned int Day         : 5;  // bits 11..15 (1..31)
    unsigned int Action      : 4;  // bits 16..19 (Authentication method bitmask)
    unsigned int Verify      : 5;  // bits 20..24 (Verification / status mode)
    unsigned int JobCode     : 7;  // bits 25..31 (0..127)
} BitfieldA;

// Bytes 20-23 (UINT32 Little-Endian)
typedef struct {
    unsigned int Antipassback : 1;  // bit 0      (0 = Normal, 1 = Antipassback active)
    unsigned int DeviceID     : 14; // bits 1..14 (0..16383 Device Number DN)
    unsigned int Hour         : 5;  // bits 15..19 (0..23)
    unsigned int Minute       : 6;  // bits 20..25 (0..59)
    unsigned int Second       : 6;  // bits 26..31 (0..59)
} BitfieldB;
```

### Exact Bitwise Parsing Formulas (JavaScript / C / Python / Delphi)
```javascript
// Bytes 16-19
const year        = (buf[16] & 0x7F) + 2000;
const month       = ((buf[16] | (buf[17] << 8)) >>> 7) & 0x0F;
const day         = ((buf[17] | (buf[18] << 8)) >>> 3) & 0x1F;
const action      = buf[18] & 0x0F;
const verify      = ((buf[18] | (buf[19] << 8)) >>> 4) & 0x1F;
const jobCode     = ((buf[19] | (buf[20] << 8)) >>> 1) & 0x7F;

// Bytes 20-23
const antipassback = buf[20] & 0x01;
const deviceId    = ((buf[20] | (buf[21] << 8) | (buf[22] << 16)) >>> 1) & 0x3FFF;
const hour        = ((buf[21] | (buf[22] << 8)) >>> 7) & 0x1F;
const minute      = ((buf[22] | (buf[23] << 8)) >>> 4) & 0x3F;
const second      = (buf[23] >>> 2) & 0x3F;
```

---

## 4. Verification Modes (`IOMode` / `GetGLogVerify`)

| Code | Label | Description |
|:---:|:---|:---|
| `0` | **Check in** | Morning / standard attendance check-in |
| `1` | **Clock in** | Shift start |
| `2` | **Clock out** | Shift finish |
| `3` | **Customer in** | Guest / visitor arrival |
| `4` | **Customer out** | Guest / visitor departure |
| `5` | **Out** | Break / duty out |
| `6` | **In** | Break / duty in |
| `7` | **User defined 1** | Custom slot 1 |
| `8` | **User defined 2** | Custom slot 2 |
| `12` | **Button open** | Access control physical exit button triggered |
| `13` | **Software open** | Electronic door lock triggered remotely via software |
| `14` | **Keep open** | Passage / unrestricted door state active |
| `15` | **Keep close** | Lockdown / secured door state active |
| `16` | **Auto mode** | Automatic schedule state |
| `17` | **Open in** | Entrance door unlocked |
| `18` | **Open out** | Exit door unlocked |
| `19` | **Overtime open alarm** | Door held open longer than max threshold |
| `20` | **Forced open alarm** | Door opened without valid credentials |
| `21` | **Antihijack alarm** | Duress PIN or duress fingerprint scanned |
| `22` | **Input action 1** | Auxiliary sensor 1 triggered |
| `23` | **Input action 2** | Auxiliary sensor 2 triggered |
| `24` | **Output action 1** | Relay output 1 activated |
| `25` | **Output action 2** | Relay output 2 activated |
| `26` | **Invalid time** | Access attempted outside allowed time zone |
| `27` | **Invalid date** | Access attempted on holiday / restricted date |
| `31` | **Illegal operation** | Unenrolled user or unauthorized biometric scan |

---

## 5. Action Method Bitmask (`GLogType`)

A 4-bit bitmask describing the authentication credential used:

| Bit | Value | Flag | Credential Description |
|:---:|:---:|:---:|:---|
| Bit 0 | `1` | **F** | Fingerprint biometric match |
| Bit 1 | `2` | **P** | Password / Keypad PIN entered |
| Bit 2 | `4` | **C** | RFID Proximity Card (EM-ID / Mifare) scanned |
| Bit 3 | `8` | **I** | User ID manually typed |

*Composite Examples:*
- `1` (`0x01`): Fingerprint only (`F`)
- `3` (`0x03`): Fingerprint + Password (`F+P`)
- `5` (`0x05`): Fingerprint + Card (`F+C`)
- `7` (`0x07`): Fingerprint + Password + Card (`F+P+C`)

---

## 6. The Hardware ACK Acknowledgment Rule

When the terminal pushes a punch packet over UDP, it starts an internal 5-second countdown timer. If a valid ACK is not received within this window, the terminal will:
1. Sound an audible error beep.
2. Flag the punch as unconfirmed.
3. Retransmit the identical 32-byte packet every 5 seconds until confirmed.

### The Exact Acknowledgment Pattern
The terminal expects an **exact 32-byte verbatim echo of the incoming packet** sent back to the terminal's IP address and source UDP port:

```pascal
// From original Delphi SDK RealTimeFrm.pas line 121:
FUDPServer.SendBuffer(ABinding.PeerIP, ABinding.PeerPort, lReceiveData[0], GLogLen);
```

```javascript
// Node.js implementation:
const ackBuf = Buffer.from(msg);
server.send(ackBuf, 0, ackBuf.length, rinfo.port, rinfo.address);
```
