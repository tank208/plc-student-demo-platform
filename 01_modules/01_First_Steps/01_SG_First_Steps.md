# Student Curriculum: Module 01 – First Steps with Arduino Opta

**Estimated Duration:** 1 hour  
**Format:** Hands-on with Arduino PLC IDE  
**Power Requirements:** USB-C only (no external power needed)

---

## Learning Objectives

By the end of this module, you will be able to:

- Connect and power the Arduino Opta using a USB-C cable
    
- Install and use the Arduino PLC IDE to write and upload a program
    
- Create a simple Ladder Logic program using the USER button to control the onboard LED
    
- Run the program and observe input/output behavior on the Opta
    

---

## Materials Required

- Arduino Opta WiFi (AFX00002)
    
- USB-C to USB-A cable
    
- Windows 10 or 11 laptop
    
- Arduino PLC IDE version 1.0.3 or later
    

---

## Setup Steps

### 1. Power the Opta

- Connect your Opta to your computer using the USB-C cable
    
- The board will be powered through USB-C for this module (no external 24V required)
    

### 2. Install and Launch the Arduino PLC IDE

- Download from the official Arduino site
    
- Install and launch the application
    
- Select the Arduino Opta board as your target
    

---

## First Program: Toggle LED with Button

### Overview

You’ll write a simple Ladder Logic program that turns ON the Opta’s onboard LED when the USER button is pressed.

### Steps

1. Open Arduino PLC IDE and create a new project
    
2. Select your target as Arduino Opta WiFi
    
3. Add a new Ladder Diagram
    
4. Insert a Normally Open contact and map it to `BTN_USER`
    
5. Insert a Coil and map it to `LED_BUILTIN` or `PA5`
    
6. Connect the contact to the coil in a single rung
    

---

## Uploading and Running Your Program

- Go to Tools → Runtime → Flash Bootloader (only needed the first time)
    
- After flashing, activate the runtime
    
- Switch the runtime mode to **RUN**
    

### Test:

- Press the USER button
    
- The onboard LED should light up while the button is pressed
    

---

## Troubleshooting Tips

|Problem|Cause|Fix|
|---|---|---|
|LED does not light up|Runtime is in STOP mode|Change to RUN mode in IDE|
|Button press has no effect|Input not mapped correctly|Check that `BTN_USER` is mapped to `PC13`|

---

## Reflection Questions

- What role does `BTN_USER` play in your program?
- Why is it important to understand input/output mapping in PLCs?
- What might happen in an industrial system if inputs are not mapped correctly?

## Completion Checklist

-  Opta connected via USB-C
    
-  Arduino PLC IDE installed and running
    
-  Program created and uploaded
    
-  LED responds to USER button press
    

---

## Key Terms

- **BTN_USER**: Internal button on the Opta, mapped to pin `PC13`
    
- **LED_BUILTIN**: Internal status LED, mapped to pin `PA5`
    
- **USB-C**: Used for logic power and programming (not relay power)
    
