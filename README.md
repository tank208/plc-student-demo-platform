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

## Contributors

- William Hall – Student Research Lead (University of Idaho – CDA Lab)
- Dr. John Shovic – Faculty Advisor
- Dr. Mary Everett – Faculty Advisor

---

## Notes

This repository is sanitized for educational and research use.  
Certain wiring details and instructional materials are kept in instructor-only archives to protect device integrity.
