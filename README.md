# PLC Student Demo Platform

This repository supports the development and deployment of a secure, modular, and repeatable student training platform using the Arduino Opta micro-PLC.

It is designed for high school and undergraduate use in cybersecurity, systems engineering, and industrial automation education.

---

## Purpose

This project introduces students to:

- PLC hardware and relay logic (Arduino Opta)
- IEC 61131-3 Ladder Logic and Structured Text programming
- Modbus TCP/IP for industrial communication
- SCADA visualization using Ignition
- Secure control system design principles

It also documents the development process as a student-led research spine at the University of Idaho – Coeur d'Alene.

---

## Folder Overview

- `00_overview/` – Project introduction, research goals, and educational context  
- `01_modules/` – Curriculum modules (Module 00–03) for both student and instructor  
- `02_code_samples/` – Structured Text and Ladder Logic pseudocode with screenshots  
- `03_assets/` – Wiring diagrams, oscilloscope output, and ladder logic images  
- `04_hardware/` – Arduino Opta, DIN Simul8, TMP236 datasheets and physical testbed  
- `devlog/` – Daily development logs, debug notes, and system findings  
- `docs/` – Final reflection, grant proposal, and project planning materials  

---

## Getting Started

To replicate or extend this system:

1. Begin with the [curriculum modules](./01_modules/)
2. Power the Arduino Opta using USB-C and optionally connect the DIN Simul8 block
3. Open ladder logic projects in the Arduino PLC IDE
4. Upload ST or ladder logic files to the PLC
5. Use the Oscilloscope or Watch tools to verify sensor and output behavior
6. (Optional) Integrate with SCADA dashboard using Ignition and Modbus TCP/IP

---

## Development Log

All engineering decisions, testing steps, and code evolution are tracked in the [DEVLOG](./devlog/README.md).

---

## Recent Additions (July 24, 2025)

### Repository Cleanup
- Folder structure finalized to support modular deployment and GitHub navigation
- `.gitignore` filters out IDE-generated files and project clutter
- `.gitattributes` ensures `.st` files are parsed correctly on GitHub

### Curriculum Completion
- All four modules completed with both student and instructor versions:
  - Module 00: What is a PLC?  
  - Module 01: First Steps with Arduino Opta  
  - Module 02: Digital Input Counter (DIN Simul8)  
  - Module 03: Celsius Temperature Control with ST and Ladder Logic  

### Code Samples
- All code examples are now extracted into `02_code_samples/`:
  - `binary_counter.st`  
  - `temp_control.st`  
  - `ladder_logic.txt`  
  - Associated ladder logic screenshots in `03_assets/`

---

## Reference Materials

This project was inspired by and extends core concepts from Arduino's official PLC tutorials:

- [Arduino PLC Course – Getting Started](https://courses.arduino.cc/explore-plc/lessons/getting-started)
- [DIN Simul8 Projects](https://courses.arduino.cc/explore-plc/lessons/getting-started-din-simul8/)

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

Licensed under the [MIT License](LICENSE).

If you adapt or deploy this project, please retain attribution and cite the original work when possible.

---

## Notes

This repository is sanitized for educational and research use.  
Instructor-only archives contain wiring methods and live lab materials to preserve system integrity.
