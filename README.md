# PLC Student Demo Platform

This repository supports the development and deployment of a secure, modular, and repeatable student training platform using the Arduino Opta micro-PLC.

It is designed for high school and undergraduate use in cybersecurity, systems engineering, and industrial automation education.

> **Note:** This is an active curriculum pilot developed by a student researcher at the University of Idaho – Coeur d'Alene.  
> The goal is to offer a secure, repeatable PLC platform that scales from beginner training to advanced ICS research.

---

## Purpose

This project introduces students to:

- PLC hardware and relay logic (Arduino Opta)
- IEC 61131-3 Ladder Logic and Structured Text programming
- Modbus TCP/IP for industrial communication
- SCADA visualization using Ignition
- Cyber-physical system security concepts and basic ICS hardening principles

It also documents the development process as a student-led research spine at the University of Idaho – Coeur d'Alene.

---

## Folder Overview

- `00_overview/` – Research context, student objectives, and project background  
- `01_modules/` – All-in-one student and instructor curriculum modules (00–03)
- `02_code_samples/` – Structured Text and Ladder Logic pseudocode with screenshots  
- `03_assets/` – Wiring diagrams, oscilloscope output, and ladder logic images  
- `04_hardware/` – Arduino Opta, DIN Simul8, TMP236 datasheets and physical testbed  
- `devlog/` – Daily development logs, debug notes, and system findings  
- `docs/` – Final reflection, grant proposal, and project planning materials  

---

## Getting Started

To implement this instructional system in a lab or classroom:

> All curriculum modules are designed for pre-wired hardware. No soldering or electrical configuration required.
1. Begin with the [curriculum modules](./01_modules/)
2. Power the Arduino Opta using USB-C and optionally connect the DIN Simul8 block
3. Open ladder logic projects in the Arduino PLC IDE
4. Upload ST or ladder logic files to the PLC
5. Use the Oscilloscope or Watch tools to verify sensor and output behavior
6. (Optional) Integrate with SCADA dashboard using Ignition and Modbus TCP/IP

---

## For Educators

If you are an instructor, curriculum designer, or researcher interested in adapting this platform for your classroom or lab:

- See `00_overview/` for context and deployment advice
- All `.md` files are written for clarity and instructional reuse
- Instructor-only guides (not published in this repo) are available upon request

---

## Development Log

+ System design decisions, logic testing, and student iteration are tracked in the [DEVLOG](./devlog/README.md).

---

## Recent Additions (August 4, 2025)

### Curriculum Finalization
- All four modules completed and reviewed for:
  - Student Guides (`SG`)
  - Teacher Guides (`TG`)
  - Wiring length references, diagrams, and input/output mapping
  - Reflection questions and assessment strategies
- Teacher Guides (`TG`) now include:
  - Direct links to code, images, and Arduino course references
  - Clear module purpose, instructional outcomes, and delivery flow

### Repository Navigation
- README updated to reflect full curriculum and research scope
- Internal links between folders (`01_modules`, `02_code_samples`, `03_assets`) verified
- Instructor-only assets documented but withheld for educational integrity

### Structural Improvements
- Wiring lengths mock-up added to Module 02 (`Binary Input Counter`)
- `Module Purpose` clarified across all `TG` files
- Consistency pass on terminology, formatting, and learning objective language
- Additional clarity for smoothing (`Avg_Temp`) and hysteresis logic in Module 03

### Instructor and Student Alignment
- Instructor Notes now fully support guided delivery without relying on external documents
- Student Curriculum guides made self-contained, suitable for bootcamp-style deployment
- Reflection questions now support deeper critical thinking, real-world tie-in, and troubleshooting mindset

---

## Reference Materials

This project was inspired by and extends core concepts from Arduino's official PLC tutorials:

- [Arduino PLC Course – Getting Started](https://courses.arduino.cc/explore-plc/lessons/getting-started)
- [DIN Simul8 Projects](https://courses.arduino.cc/explore-plc/lessons/getting-started-din-simul8/)

These external tutorials were used under the terms of the CC BY-SA 4.0 license, with attribution and modification noted in the guides.

All content has been rewritten to support structured curriculum development, instructional clarity, and reproducible system behavior for student labs.

---

## Contributors

- William Hall – Student Research Lead (University of Idaho – CDA Lab)  
- Dr. John Shovic – Faculty Advisor  
- Dr. Mary Everett – Faculty Advisor

---

## Attribution

This project was developed by **William Hall** as part of undergraduate research at the **University of Idaho – Coeur d’Alene**, under the mentorship of **Dr. John Shovic** and **Dr. Mary Everett**.

Its purpose is to provide a modular, secure, and reproducible framework for teaching PLC control systems using the Arduino Opta.

Licensed under the [MIT License](./LICENSE).

If you adapt or deploy this project, please retain attribution and cite the original work when possible.

---

## Notes

This repository is sanitized for educational and research use.  
Instructor-only archives contain wiring methods and live lab materials to preserve system integrity.

---

**Milestone Commit:** `v2025.08.04`  
Tagged for curriculum beta completion and review with faculty.

Future phases may include SCADA integration labs and ICS security challenges using Modbus TCP/IP and Ignition Gateway tools.
