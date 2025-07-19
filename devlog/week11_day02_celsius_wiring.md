# DEVLOG – Week 11, Day 02

**Date:** 2025-07-17  
**Location:** Home PLC Lab  
**Time Logged:** 8 hours  
**System:** Arduino PLC IDE, USB-C Opta power  
**Branch:** `01_curriculum/03_SG_heater`  


---

## Task Summary

**Planned:**

- Evaluate Arduino project “Heating Resistors with 2 Switches” for Module 03
    
- Begin coding ladder logic and testing logic behavior with physical inputs
    

**Actual:**

- Completed full review of Arduino project structure and relevance to curriculum
    
- Wired up dual-switch heating control using DIN Simul8 inputs and simulated resistor
    
- Evaluated edge cases, brainstormed extensions for student instruction
    

---

## System / Build Updates

- Opta mounted on DIN rail
    
- Confirmed DIN Simul8 terminal connections for pushbuttons and output indicator (heater LED)
    
- USB-C power confirmed stable on long runtime
    
- Opta recognized and compiled via Arduino PLC IDE v1.0.3
    

---

## Diagnostics and Testing

- Verified I1 and I2 (pushbuttons) responded with expected HIGH/LOW transitions
- Continuity test of wired connections between Simul8, Opta and Celsius, all passed.
- Pull check of wires before power on, passed.

---

## Key Findings and Learnings

- Opta response time is snappy on basic digital inputs — ideal for classroom demos
    
- DIN Simul8 LED outputs useful as heater indicators for low-voltage demonstration
    
- Ladder logic transition between AND/OR gives a clean teaching moment on logical safety
    
- Students will grasp “fail-safe” design by testing with button stuck ON/OFF scenarios
    

---

## Issues and Fixes

**Issue:** Ladder rung output (Q0) flickered during unstable button presses  
**Resolution:** Planning to debounce inputs either through IDE setting or hardware (pull-down resistor) in next session

**Issue:** USB-C disconnected once during IDE compile upload  
**Resolution:** Verified cable fit; will monitor for loose connection issue, may switch to barrel jack power if it persists

---

## Next Actions

- Add TON timer logic: heater must only turn on after 3-second button hold
    
- Document ladder logic examples (AND, OR, and Timed Start) for curriculum
    
- Begin drafting Module 03 outline for bootcamp-ready lesson plan
    

---

## Files / Commits / References

- Code: `module03_heater_control.ladder`
    
- Diagrams: `Module03_Wiring_DINSimul8.png`
    
- GitHub: [PLC Student Demo Platform – Commit fc2c4aa](https://github.com/tank208/plc-student-demo-platform/commit/fc2c4aa)
    
- Notes: `Notebook pg. 33–35 (Module 03 logic states)`
    

---

## Reflections / Notes

- This project feels like a foundational lab that bridges digital logic and safety design, a strong candidate for final integration into the 2-hour bootcamp starter.
    
- Need to test analog variation later (PWM output to heating element or visual cue).
    
- Add a debug ladder routine to help students identify input states in real time.
    

---

## Tags

`#plc` `#opta` `#week11` `#module03` `#devlog` `#ladderlogic` `#heatingproject` `#educationaldesign`
