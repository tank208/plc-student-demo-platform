# Code Samples – Structured Text & Ladder Logic

This folder contains minimal, extracted logic files used in the curriculum modules for the Arduino Opta training platform.

All code samples are provided in either IEC 61131-3 Structured Text (.st) or as ladder logic pseudocode (.txt) to support dual-format learning.

These files are not full IDE projects. They are simplified for clarity, version control, and instructional walkthrough.

---

## File Index

- `01_First_Steps_ladder_logic.txt`  
  → Pseudocode outline for Module 01 (digital output toggling)

- `02_Binary_Input_Counter.st`  
  → Structured Text logic for counting binary states from DIN Simul8 inputs

- `03_Celsius_Sensor_Control.st`  
  → Temperature control logic using analog input and hysteresis thresholds

---

## Usage Notes

- These logic blocks must be copied into the appropriate `Program` or `Global_vars` sections of a `.plcprj` file within the Arduino PLC IDE.
- Variable names are referenced across modules—ensure consistency when copying logic between programs.
- Ladder logic files include simplified pseudocode for readability and planning purposes. Screenshot references are stored in `/03_assets/`.

---

## Related Folders

- `/01_modules/` → Curriculum modules that reference these files  
- `/03_assets/` → Ladder logic screenshots and diagrams  
- `/devlog/` → Daily logs that track development and implementation  
