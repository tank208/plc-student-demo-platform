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
- Arduino PLC IDE 1.0.3 or later  
  https://www.arduino.cc/en/software#arduino-plc-ide

---

## Setup Instructions

### 1. Connect and Power the Opta

- Connect the Opta to your computer via USB-C  
- No external 24VDC is required for this module  
- LED indicators will confirm board power  

### 2. Install and Launch the Arduino PLC IDE

- Download and install the IDE  
- Open the IDE and create a new project  
- Select board target: Arduino Opta (AFX00002)  

---

## First Program: Button-Controlled LED

### Step-by-Step

1. Create a new Ladder Diagram program  
2. Insert a Normally Open (NO) contact and map it to `BTN_USER`  
3. Insert a Coil and map it to `LED_BUILTIN` or `PA5`  
4. Link the contact and coil in a single rung

![LED Mapping](../03_assets/01_first_steps/01_led_mapping.png)  
![Programmable Input Mapping](../03_assets/01_first_steps/01_programmable_input_mapping.png)

---

### Variable Mapping

- `BTN_USER` → Internal digital input mapped to `PC13`  
- `LED_BUILTIN` or `PA5` → Onboard user LED

![Variable Mapping Table](../03_assets/01_first_steps/01_button_mapping.png)

---

## Upload and Test

- Flash bootloader via **Tools → Runtime → Flash Bootloader** (if required)  
- Activate the runtime and switch to **RUN** mode  
- Press the USER button — the onboard LED should illuminate

![Input/Output Behavior](../03_assets/01_first_steps/01_input-output.jpg)

---

## Troubleshooting

| Symptom              | Cause                          | Solution                          |
|----------------------|--------------------------------|-----------------------------------|
| LED doesn’t respond  | Runtime is not active          | Set PLC to RUN mode in IDE        |
| BTN_USER not recognized | Variable mapping not defined | Assign PC13 to BTN_USER under Resources |

---

## Completion Checklist

- [ ] Program uploaded successfully  
- [ ] LED turns on when USER button is pressed  
- [ ] Runtime stays active  

---

## Key Terms

- **BTN_USER** – Internal pushbutton on the Opta (PC13)  
- **LED_BUILTIN** – Internal LED on the Opta (PA5)  
- **Ladder Logic** – Graphical PLC programming language based on relay logic  
- **Runtime Mode** – Active execution mode for the PLC program  

---

## Tools Required

- Windows laptop with Arduino PLC IDE  
- USB-C to USB-A cable  
- No external power supply or wiring required  

---

## Resources

- Student Guide: `01_SG_First_Steps.md`  
- Variable Mapping: `../03_assets/01_first_steps/01_button_mapping.png`  
- Ladder Logic Example: `../03_assets/01_first_steps/01_ladder_logic.png`  
- Arduino Course – Getting Started:  
  https://courses.arduino.cc/explore-plc/lessons/getting-started/

This module includes material adapted from the official Arduino Explore PLC course under the Creative Commons CC BY-SA 4.0 license. Attribution is required for reuse.

---

This module introduces the foundational steps for working with the Arduino Opta using safe internal components. It prepares students for future modules involving external digital inputs and outputs.
