# DEVLOG – Week 11, Day 3
**Date:** 2025-07-18  
**Location:** Home PLC Lab  
**Time Logged:** 8 hours  
**System:** OVERWATCH – Arduino PLC IDE (Windows), Opta powered via USB-C  
**Branch:** `01_curriculum/03_celsius`  
**Commit ID:** _(n/a – debugging, no commits yet)_

---

## Task Summary

**Planned:**

- Complete Arduino Opta analog temperature reading tutorial  
- Add key sensor variables to Watch table for runtime debugging  

**Actual:**

- Ran through full tutorial sequence for analog-to-temp conversion using Ladder + ST  
- Recreated variables as shown in screenshots, attempted to monitor via Watch  
- Spent extended time troubleshooting why `Sens_temp_degrees` and others failed to appear  
- Re-read Arduino material and verified syntax and build steps  

---

## System / Build Updates

- Used default structured text variable declarations from tutorial  
- Attempted to use simulated analog input on Opta AI0 (open circuit)  
- Configured Watch window filters and browsed symbol table repeatedly  

---

## Diagnostics and Testing

- Observed `Sens_temp` value jumping erratically — unstable due to unconnected analog input  
- Unable to view `Sens_temp_register`, `Sens_temp_Voltage`, or `Sens_temp_degrees` in Watch  
- Verified variable names were spelled correctly and matched tutorial examples  
- Recompiled multiple times but symbols remained inaccessible  

---

## Key Findings and Learnings

- Analog inputs float wildly when not physically connected or terminated — analog pin noise  
- Watch variables only populate if:
  - They are declared in ST
  - They are compiled successfully
  - They are not optimized away (unreferenced)
- Tutorials lack sufficient explanation for variable declarations and scaling math  
- Arduino PLC IDE gives cryptic errors when symbol tables don’t match expectations  

---

## Issues and Fixes

**Issue:** `Sens_temp_degrees` and related symbols not found in Watch window  
**Resolution:** Will rebuild ST section from scratch with `VAR...END_VAR` block, confirm logic is executed, and monitor compile success before adding Watch entries  

**Issue:** Analog input noise causing unstable readings  
**Resolution:** Plan to attach potentiometer to AI0 or clamp voltage using known resistor divider to test known signal  

---

## Next Actions

- Recreate all temperature variables in clean ST block and force value usage  
- Test Watch table population after verifying compilation and deployment  
- Document proper Watch workflow as curriculum correction  
- Prepare ladder + ST hybrid template for student-ready delivery  

---

## Files / Commits / References

- Code: _Not committed – working copy only_  
- Diagrams: _n/a_  
- GitHub: _(pending push once working)_  
- Notes: Obsidian note 2025-07-18 – error screenshots, symbol table, debug path  

---

## Reflections / Notes

Today was rough. Lost time chasing symbol errors and silent compiler issues. Frustrating to hit a wall from something that *should* be simple. The IDE lacks feedback that would help students understand *why* something isn’t showing up. Took good notes and will use this to build a more resilient lesson plan — one that assumes students will get stuck exactly here and shows them how to get out.

This will be worth it.

---

## Meeting with Dr. Everett

Had a brief but focused check-in with Dr. Mary Everett. Shared current debugging status and frustration with tutorial clarity. She acknowledged the difficulty, encouraged continuing documentation, and affirmed that even stalled progress counts when it’s being documented and used to improve the training process. 

---

## Tags

`#plc` `#opta` `#week11` `#module04` `#analoginput` `#devlog` `#structuredtext` `#watchdebugging` `#meeting`
