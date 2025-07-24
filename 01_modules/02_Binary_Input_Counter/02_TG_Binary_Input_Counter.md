# Instructor Notes: Module 02 – Binary Input Counter (DIN Simul8)

---

## Pre-Lab Setup

This module uses **pre-wired hardware only**. Students do not connect any physical inputs or outputs.

### Required Hardware
- Arduino Opta WiFi (AFX00002)
- DIN Simul8 Module
- 24V DC Power Supply (barrel jack)
- USB-C to USB-A cable
- Jumper wires (20–22 AWG, pre-cut)
- Laptop with Arduino PLC IDE v1.0.3 or newer

---

## Wiring Instructions

### Power
- Connect 24V DC power to both:
  - Opta VIN terminals (+24V and GND)
  - DIN Simul8 +24V and GND terminals

### Signal
- Connect DIN Simul8 outputs to Opta inputs:
  - X0 → I1
  - X1 → I2
  - ...
  - X7 → I8

> Ensure **shared GND** between all devices.  
> Test continuity between each X# → I# pair before powering the system.

---

## Pre-Test Program

Use this logic to validate LED output before class:

```iecst
VAR
  switchCount : INT := 0;
END_VAR

switchCount := 0;

IF Input_1 THEN switchCount := switchCount + 1; END_IF;
... (repeat for Input_2 through Input_8)

LED_4 := (switchCount AND 1) <> 0;
LED_3 := (switchCount AND 2) <> 0;
LED_2 := (switchCount AND 4) <> 0;
LED_1 := (switchCount AND 8) <> 0;
```

---

## Learning Outcomes to Assess

Students should:
- Correctly describe how switch states convert to binary
- Understand `switchCount` logic and the use of AND masks
- Successfully upload and run their code on the Opta
- Explain which LEDs should be active for a given input count

---

## Common Student Issues

| Symptom                   | Fix                                 |
|----------------------------|--------------------------------------|
| No LEDs at all            | Runtime not in RUN mode              |
| Upload fails              | Bootloader not flashed               |
| Wrong LEDs lighting       | Simul8 wired incorrectly             |
| Inputs appear stuck       | GND not properly shared              |

---

## Suggested Instructor Folder Structure

```
/Instructor/
├── Module_02_Instructor_Notes.md
├── Simul8_Wiring_Diagram.png
├── Pre-Test_Code.st
└── Module_02_Presentation.pptx
```

---

## Instructor Checklist

- [ ] System powered and confirmed operational
- [ ] All 8 Simul8 inputs tested
- [ ] LED binary output verified
- [ ] IDE configured and Opta connected
- [ ] Student environment ready (no exposed wiring)

---
