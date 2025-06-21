# DEVLOG – Week 7, Day 5

**Date:** June 21, 2025  
**Location:** Home PLC Lab  
**Time Logged:** 7.0 hours  
**System:** Arduino Opta WiFi Trainer (Home Setup)

---

## Physical Build Summary

### Trainer Frame Assembled
- 3D-printed dual-rail stand completed
- Angled DIN rail mounted as main logic bus
- Rear horizontal DIN rail installed for terminal block routing
- Confirmed future expandability and student visibility

### Component Mounting
- **Top Rail**:  
  - Arduino Opta WiFi (center)  
  - Simul8 Input Module (left)  
  - Celsius I²C Temp Sensor (right)  
- **Rear Rail**:  
  - Color-coded terminal blocks installed:
    - 🔴 Red = V+ (Simul8 powered)
    - 🔵 Blue = 0V/GND
    - ⚫ Black = Outputs
    - ⚪ Gray = Inputs
    - 🟡 Yellow = Optional signals
    - 🟢 Green/Yellow = PE block for future chassis ground

---

## Wiring Complete

- Simul8 pushbutton outputs routed to Opta inputs (I1–I4)
- GND shared between Simul8 and Opta via blue TB bus
- Opta Q0/Q1 outputs routed to black TBs for future load testing
- No external PSU used — Simul8 acts as power source
- All connections made via DIN terminal blocks to encourage industrial wiring standards

---

## Continuity Testing (Pre-Power)

- Verified continuity from Simul8 OUT → Opta IN via TBs
- Verified shared GND across all modules
- Verified output paths are clean and labeled
- All wires tug-tested for secure connection
- **Power-on deferred until post-confirmation of logic program**

---

## Lessons and Notes

- Realized Simul8 acts as both signal and power source — changed wiring strategy mid-build
- Rear DIN rail is optimal for signal routing, not power distribution (in current config)
- PE block installed but unused — reserved for future grounded enclosures
- Trainer frame may be a viable print option for future lab kits

---

## Next Steps

- Upload and test Ladder Logic for Simul8 input mapping  
- Begin validation with Celsius sensor and Q0 output  
- Write replication documentation for student trainers  
- Label wiring paths for DEVLOG and instructional use  
- Push DEVLOG to GitHub with all wiring images

