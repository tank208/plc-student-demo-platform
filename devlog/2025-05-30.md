# DEVLOG – Week 4, Day 1

**Date:** May 30, 2025  
**Time:** 10:00  – 17:00
**Location:** Home PLC Lab  
**Time Logged:** 7.0

## Focus
- PLC Architecture and I/O
- Ladder Logic Structure
- Assembly and wiring of Arduino Opta, Simul8, and Celsius Temp modules

## Actions Taken
- Mounted Arduino Opta, Simul8, and Celsius Temp modules to a DIN rail in a side-by-side configuration
- Wired the PLC stack according to the official Arduino PLC wiring diagram:
  - Stripped wires to approximately 5–6 mm (not the recommended 7 mm, which is excessive and exposes copper)
  - Performed pull checks on all connections
  - Re-torqued terminals to 0.09 Nm
- Connected external 24V DC power supply through CyberPower 1350 UPS
- Verified clean power-on sequence and status indicators on all modules
- Uploaded LED command logic; verified retained functionality through Opta button input
- Connected USB-C for programming interface
- Completed Simul8 input simulation using a basic integer loop to mimic input status

## Observations
- Arduino’s PLC tutorial introduces unnecessary complexity through its naming conventions and forced early variable declarations
- Instructional flow is not intuitive, especially for learners without prior PLC or Arduino experience
- The platform is capable, but the documentation lacks structure for effective teaching or onboarding
- Hands-on execution is solid once hardware is correctly configured

## Hazards and Teaching Considerations
- Always power off before making wiring changes to avoid live circuit risks
- Ensure no exposed copper is left visible at terminal entry points
- Future instructional setups should emphasize wire preparation and safety during power sequencing

## Assembly Tip
- DIN rail: 35mm width, IEC/EN 60715 TH35 standard
- Cut length: 165mm (6.5 inches) to accommodate all three modules in a compact layout
- Configuration mirrors industrial practice while still fitting inside the original storage container for transport and return

## Learning Moment
Mastery comes not from completing steps, but from understanding and interpreting the system. Tutorials provide sequence, but true understanding comes through independent reconstruction and applied logic. The simulation made this distinction clear.

## Next Step
- Begin development of small logic routines:
  - Input-based toggle to output
  - Timer or pulse-driven control
- Organize key takeaways from the theory module into initial workshop teaching plan
- Prepare field-safe enclosure plan and wiring documentation

## DEVLOG Summary
The system is now assembled, wired, powered, and functional. The “A Bit of Theory” module has been completed, and basic logic interaction using Simul8 has been validated. The equipment is stable and protected. This confirms the foundational skills needed to begin workshop development and more advanced programming. Documentation quality from Arduino is lacking, reinforcing the value of creating a student-friendly version for future lab use.
