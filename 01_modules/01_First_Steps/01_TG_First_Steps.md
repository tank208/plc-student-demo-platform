# Module 01 – First Steps with Arduino Opta

**Estimated Duration:** 1 hour  
**Format:** Hands-on + IDE walkthrough  
**Prerequisites:** None

---

## Learning Objectives

By the end of this module, students will be able to:

- Power and connect the Arduino Opta via USB-C for logic programming
    
- Install and launch the Arduino PLC IDE
    
- Upload a basic Ladder Logic program to control an onboard LED using the USER button
    
- Understand basic variable mapping and runtime management
    

---

## Materials Required

- Arduino Opta WiFi (AFX00002)
    
- USB-C to USB-A cable (official or equivalent)
    
- Windows 10 or 11 laptop
    
- Arduino PLC IDE 1.0.3 or later ([https://www.arduino.cc/en/software#arduino-plc-ide](https://www.arduino.cc/en/software#arduino-plc-ide))
    

---

## Setup Instructions

### 1. Connect and Power the Opta

- Connect Opta via USB-C to your computer
    
- No external 24VDC is required for this module
    
- LED status will indicate board power
    

### 2. Install and Launch the Arduino PLC IDE

- Open the IDE and create a new project
    
- Select board target: Arduino Opta (AFX00002)
    

---

## First Program: Button-Controlled LED

### Step-by-Step

1. Create a new Ladder Diagram program
    
2. Add a normally open contact mapped to `BTN_USER`
    
3. Add a coil mapped to `LED_BUILTIN` or `PA5` (internal LED)
    
4. Link both elements in a single rung
    

### Variable Mapping

- `BTN_USER` → Internal digital input (mapped to PC13)
    
- `LED_BUILTIN` or `PA5` → Onboard user LED
    

---

## Upload & Test

- Flash bootloader if required via Tools > Runtime > Flash Bootloader
    
- Set runtime to `RUN` mode in IDE
    
- Press USER button → LED should turn ON
    

---

## Troubleshooting

|Symptom|Cause|Solution|
|---|---|---|
|LED doesn’t respond|Runtime is not active|Set PLC to RUN mode in IDE|
|BTN_USER not recognized|Variable mapping not defined|Assign PC13 to BTN_USER under Resources|

---

## Completion Checklist

- [ ] Program uploaded successfully
    
- [ ] LED turns on when USER button is pressed
    
- [ ] Runtime stays active
    

---


---

## Key Terms

- **BTN_USER** – Internal pushbutton on the Opta (PC13)
- **LED_BUILTIN** – Internal LED on the Opta (PA5)
- **Ladder Logic** – Graphical PLC programming language based on relay logic
- **Runtime Mode** – The active mode for executing programs on a PLC


## Tools Required

- Laptop with Arduino PLC IDE
    
- USB-C cable
    
- No external wiring or power supply needed
    

This module forms the foundation for I/O logic in later modules and demonstrates core programming flow using safe internal components.