\# Code Samples – Structured Text \& Ladder Logic



This folder contains minimal, extracted logic files used in the curriculum modules for the Arduino Opta training platform.



All code samples are provided in either IEC 61131-3 Structured Text (.st) or as ladder logic pseudocode (.txt) to support dual-format learning.



These files are not full IDE projects. They are simplified for clarity, version control, and instructional walkthrough.



---



\## File Index



\- `01\_First\_Steps\_ladder\_logic.txt`  

&nbsp; → Pseudocode outline for Module 01 (digital output toggling)



\- `02\_Binary\_Input\_Counter.st`  

&nbsp; → Structured Text logic for counting binary states from DIN Simul8 inputs



\- `03\_Celsius\_Sensor\_Control.st`  

&nbsp; → Temperature control logic using analog input and hysteresis thresholds



---



\## Usage Notes



\- These logic blocks must be copied into the appropriate `Program` or `Global\_vars` sections of a `.plcprj` file within the Arduino PLC IDE.

\- Variable names are referenced across modules—ensure consistency when copying logic between programs.

\- Ladder logic files include simplified pseudocode for readability and planning purposes. Screenshot references are stored in `/03\_assets/`.



---



\## Related Folders



\- `/01\_modules/` → Curriculum modules that reference these files  

\- `/03\_assets/` → Ladder logic screenshots and diagrams  

\- `/devlog/` → Daily logs that track development and implementation  



