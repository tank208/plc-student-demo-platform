# DEVLOG – Week 12, Day 1

**Date:** 2025-07-22  
**Location:** Home PLC Lab  
**Time Logged:** 9 hours  
**System:** Arduino PLC IDE (Windows), Opta powered via USB-C  
**Branch:** `01_curriculum/03_celsius`  
**Commit ID:** _(n/a – live debugging and project rebuild)_

---

## Task Summary

**Planned:**

- Rebuild project from scratch to restore analog input functionality
    
- Establish reliable variable tracking via Watch and Oscilloscope
    
- Implement heater control logic with hysteresis
    

**Actual:**

- Started a new PLC project and created clean ST code block
    
- Successfully mapped analog input from AI0 (Raw_Temp)
    
- Defined structured text variables and ensured all were used in logic
    
- Verified variable values in Watch window and graphically on Oscilloscope
    
- Implemented working heater logic using ST with threshold-based hysteresis
    
- Observed real-world temperature response and ambient drift behavior
    

---

## System / Build Updates

- Created `Raw_Temp`, `Temp_Register`, `Voltage_Output`, and `Degrees_Output` variables under `Global_vars`
    
- Used `TO_REAL()` to scale analog input from 0–4095 to 0–5V
    
- Final calculation: `(100 * Voltage_Output) - 50` to derive Celsius (LM35 style)
    
- Mapped analog input to I1 and confirmed 12-bit resolution
    
- Added Boolean outputs `Heat_01`, `Heat_02` with relay mapping
    

---

## Diagnostics and Testing

- Used Oscilloscope tool to verify Degrees_Output behavior
    
- Saw stable readings with expected fluctuations (~135–137 °C)
    
- Simulated airflow changes by toggling fan; verified temperature reaction
    
- Implemented two-stage logic:
    
    - Heaters turn **on** below 70 °C
        
    - Heaters turn **off** above 80 °C
        
- Observed passive cooling behavior and residual heat effect when system is idle
    

---

## Key Findings and Learnings

- Opta analog inputs are extremely responsive to both electrical noise and ambient temp
    
- All ST variables **must** be referenced in logic or they will be optimized away and won’t show up in Watch
    
- Oscilloscope tool is excellent for verifying real-world effects in code (especially analog signals)
    
- Live debugging is clearer when you monitor **both logic states and raw sensor values**
    
- Passive heat retention is non-trivial, thermal inertia can carry systems upward in temp even with output off

- Arduino Tutorial doesn't explicitly say what this module's purpose with regard to real world applications, but once the logic worked the use cases did as well.

---

## Issues and Fixes

**Issue:** Sensor variables (`Temp_Register`, etc.) always showing 0  
**Fix:** Confirmed all variables used in active logic and built successfully. Moved from unused test file to `Data_exchange` program tied to active task.

**Issue:** `Heat_01`/`Heat_02` never triggering  
**Fix:** Confirmed logic was checking a different `Switch1` state; replaced with temperature-based IF statements

**Issue:** Temperature not falling quickly  
**Fix:** Identified expected real-world behavior — passive cooling takes time without active airflow

---

## Next Actions

- Add active fan control logic based on high temp threshold
    
- Introduce timed duty cycle logic to reduce temperature overshoot
    
- Integrate ladder visualization for relay toggling
    
- Export temperature readings to CSV for logging and analysis
    
- Write lesson draft: _“Using Structured Text for Analog Sensor Scaling”_
    

---

## Files / Commits / References

- Project: `Celsius_01.plcprj` (rebuilt + working)
    
- Oscilloscope screenshots: _see attached – 2025-07-22_
    
- GitHub: _(pending push)_
    
- Notes: Obsidian 2025-07-22 – full logic state, oscilloscope capture, debug flow
    

---

## Reflections / Notes

This was the first time everything clicked. The IDE made more sense, the variables finally did what they were supposed to, and I could _see_ the effect of ambient temp and thermal mass reflected in the logic. Watching the system live was empowering, I now understand why this matters and how it maps to real systems like HVAC or industrial heating.

Today I felt like I was actually engineering something and not just typing code.

---

## Tags

`#plc` `#opta` `#week12` `#module03` `#analoginput` `#structuredtext` `#oscilloscope` `#hysteresis` `#thermalcontrol` `#devlog`
