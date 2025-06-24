# DEVLOG – Week 8, Day 1

**Date:** June 23, 2025  
**Location:** Home PLC Lab  
**Time Logged:** 6.0 hours  
**System:** Arduino Opta WiFi Trainer (Home Setup)

---

## Diagnostics + Activation Summary

### Power-On and Runtime Activation
- First full activation of home Opta unit (WiFi model)
- Runtime flashed and PLC runtime successfully activated
- Device reset and confirmed via Arduino PLC IDE (Online > Connect)
- System recognized and operational

### LED and Switch Test
- Re-ran initial ladder logic tests from "Getting Started" module
- LED output test confirmed on Q0
- Digital input test using pushbutton confirmed on I1–I4
- Tests matched lab unit behavior

---

## Continuity + Resistance Checks (Pre-Logic)

- Verified continuity of all terminal blocks: V+, GND, Outputs, Inputs
- Ohm-checked all key signal routes against expected open/closed paths
- Ensured GND was common between Simul8 and Opta
- Confirmed no shorts between input and output lines
- Visual and physical inspection of DIN rail mount and wire routing

---

## Notes + Reflections

- Confident that home unit now matches lab unit in capabilities and layout
- Diagnostics confirm safe, modular, and reusable setup
- Will proceed with Celsius sensor integration and ladder logic validation next

---

## Next Steps

- Write ladder logic to test Celsius I²C integration and readout
- Map logic to Q0 or Q1 to confirm variable control output
- Begin drafting replication plan for student trainers
- Photograph final wiring paths and add to GitHub repo
