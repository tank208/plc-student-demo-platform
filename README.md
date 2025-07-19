# PLC Student Demo Platform

This repository supports the development and deployment of a secure, modular, and repeatable student training platform using the Arduino Opta micro-PLC.

It is designed for high school and undergraduate use in cybersecurity, systems engineering, and industrial automation education.

---

## Purpose

This project introduces students to:

- PLC hardware and relay logic (Arduino Opta)
- IEC 61131-3 Ladder Logic programming
- Modbus TCP/IP for industrial communication
- SCADA visualization using Ignition
- Secure control system design principles

It also documents the development process as a student-led research spine at the University of Idaho – Coeur d'Alene.

---

## Folder Overview

- `00_intro/` – Context, project goals, and student-facing introductions
- `01_curriculum/` – Workshop modules, worksheets, slides
- `02_instructor/` – Wiring guides, hardware setup, teaching notes
- `03_code/` – IEC ladder logic and C++ sketches for Opta deployment
- `04_assets/` – Diagrams, wiring images, SCADA screenshots
- `05_hardware/` – DIN rail test stand STL, 3MF, BOM, and print files
- `devlog/` – Daily development log, architecture decisions, and lab findings
- `docs/` – Research proposal, Gantt chart, project plan, and datasheets

---

## Getting Started

To replicate or test this system:

1. Review the [curriculum modules](./01_curriculum/)
2. Connect an Arduino Opta and Simul8 DIN block (optional)
3. Open the ladder logic project in the Arduino PLC IDE
4. Upload code and observe relay/digital I/O behavior
5. (Optional) Import SCADA dashboard in Ignition and map Modbus tags

---

## Development Log

All engineering decisions, logic experimentation, and debugging are tracked in the [DEVLOG](./devlog/README.md).

---

## New Additions (July 16, 2025)

### DIN Rail Test Stand
- Added a fully documented, 3D-printable DIN rail holder for classroom-safe wiring
- Files: STL and 3MF (Bambu Studio), includes print settings, BOM, and layout instructions
- Location: [`/05_hardware/`](./05_hardware/)

### Curriculum Development
- Completed and uploaded two curriculum modules for Boot Camp use:
  - Module 01: First Steps with Arduino Opta
  - Module 02: Digital Input Counting via Simul8 (binary output to LED)
- Instructor and student versions maintained separately
- Located in: [`/01_curriculum/`](./01_curriculum/)

## Reference Materials

This project was inspired by and extends core concepts from Arduino's official PLC tutorials:

- [Arduino PLC Course – Getting Started](https://courses.arduino.cc/explore-plc/lessons/getting-started)
- [Arduino PLC Course – DIN Simul8 Projects](https://courses.arduino.cc/explore-plc/lessons/getting-started-din-simul8/)

These modules served as the foundation for developing a more structured, classroom-ready curriculum tailored to high school and undergraduate students.  
All materials in this repository were rewritten and reorganized to support instructional clarity, pacing, debugging visibility, and secure lab deployment.


### Research and Planning
- Recovered project momentum after medical leave
- Maintained fiscal stewardship of research grant ($800 of $4000 allocated to equipment + tooling)
- Reconfirmed integration path with Celsius DIN and future HMI (Ignition) work

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
Certain wiring details and instructional materials are kept in instructor-only archives to protect device integrity.
