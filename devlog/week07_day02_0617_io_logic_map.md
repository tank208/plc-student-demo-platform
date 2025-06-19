# DEVLOG – Week 7, Day 2

**Date:** June 17, 2025  
**Location:** Home PLC Lab  
**Time Logged:** 5.0 hours

## Focus

- Deep reading and annotation of _Programmable Logic Controllers – Sixth Edition_, Chapters 2 and 3
- Correlation of textbook architecture with Arduino Opta hardware and IEC 61131-3 programming models

## Study Breakdown

### Chapter 2: Hardware Components of PLC Systems

- Reviewed core components of a traditional PLC: CPU, input/output modules, power supply, memory, communication ports
- Differentiated rack-based versus modular systems
- Understood how timers, counters, and internal relays are software-based but mapped to specific memory registers
- Noted relevance of signal isolation and voltage domain separation when applying this to Arduino Opta relay outputs

### Chapter 3: Input/Output System Operation

- Explored discrete vs analog signal behavior, input conditioning, debounce circuits, and potential for electrical noise
- Mapped textbook I/O scan behavior to Opta’s program loop and tag evaluation
- Reinforced understanding that physical inputs are evaluated before logic execution, and outputs are updated after scan

## Practical Correlation to Arduino Opta

|Concept from Textbook|Arduino Opta Implementation|
|---|---|
|Physical I/O modules|Embedded within the Opta hardware|
|CPU and memory|STM32 microcontroller with onboard storage|
|Discrete input (e.g., `I:1.0`)|Tag-based inputs like `Input_0`|
|Relay output (e.g., `O:2.0`)|Tag-based outputs like `Q0_0`|
|Internal coil or status bit|Boolean tags (e.g., `TIMER_1s`, `Temp_High`)|
|Program scan and I/O scan cycle|Matches Opta’s IEC 61131-3 evaluation model|
## Insight

Reading this textbook filled the conceptual gaps between legacy Allen-Bradley-style PLCs and the Arduino-based model I’m implementing. The logic is the same. The syntax and hardware form factor differ, but the same rules apply regarding scan timing, register behavior, and physical/electrical design boundaries.

## Next Step

- Begin work on DIN Projects, starting with the DIN Celsius Temperature Sensor
- Apply textbook logic models to real-world wiring and tag setup
- Draft a preliminary “Module 01 – System Overview” to capture I/O architecture, scan behavior, and logic flow for instructional use

## Reflection

This was not passive reading. It was deliberate systems alignment. The Opta may lack the industrial frame of a Rockwell controller, but its behavior adheres to the same operational principles. If I can master those principles here, I can secure and defend larger systems later with confidence and credibility. This work matters.