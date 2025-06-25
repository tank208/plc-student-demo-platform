## DEVLOG – Week 8, Day 2

**Date:** June 24, 2025  
**Location:** Home PLC Lab  
**Time Logged:** 8.0 hours  
**System:** Arduino Opta WiFi Trainer (Home Setup)

---

## Module Work Summary

### DIN Celsius Module

- Completed review of Celsius module.
    
- Found it more informational than hands-on; not well-suited as a standalone project.
    
- Documented technical behavior and quirks in Obsidian (write-up in progress, will finalize tomorrow).
    
- Disassembled wiring from Opta to prep for next module.
    

### DIN Simul8 Module

- Rewired PLC stack to accommodate Simul8 unit.
    
- Connected all 8 outputs (X0–X7) from Simul8 to Opta inputs (I1–I8).
    
- Verified continuity and wiring integrity via multimeter check.
    
- Powered on — system passed boot and LED diagnostics.
    
- Downloaded ST code to Opta using Arduino PLC IDE.
    
- Developed Structured Text logic to **count active switches** and **display count as binary using Opta's 4 onboard LEDs**.
    
    - Example: if switches 1, 3, and 8 are pressed, Opta registers 3 inputs → binary `0011` is displayed via LEDs.
        
- Debugged code errors from Arduino's example documentation (found incorrect logic).
    
- Verified counting behavior is accurate regardless of _which_ switches are pressed — behavior matches intended design.
    

---

## Next Steps

- Finalize full documentation of Simul8 module in Obsidian, including wiring diagrams and code breakdown.
    
- Add module write-ups and working ST code to the GitHub repo.
    
- Begin consolidating both Simul8 and Celsius modules under unified "Input Simulation" curriculum set.
    

---

## Related Files / Notes

- `ST_simul8_input_counter.st`
    
- `obsidian://open?vault=PLCResearch&file=Modules%2FCelsius`
    
- `obsidian://open?vault=PLCResearch&file=Modules%2FSimul8`
    
- #plc #research #opta #simul8 #celsius #documentation