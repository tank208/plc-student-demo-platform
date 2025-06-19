# DEVLOG – Week 7, Day 3

**Date:** June 18, 2025  
**Location:** Home PLC Lab  
**Time Logged:** 8.0 hours

## Focus

Completed deep reading and structured note-taking on **"A Bit of Theory"** module from Arduino Opta PLC Training.

## Highlights

- Reviewed **PLC history**, including Modicon 084 by Richard Morley (1968).
- Documented key features of Arduino Opta:
    - 12–24V power range
    - 8 digital inputs (Normally Open)
    - 4 relay outputs (10A max)
    - Reset & user keys with configurable functionality

## Programming Languages Reviewed

- **Ladder Diagram (LD):** Graphical, familiar to electricians
- **Function Block Diagram (FBD):** Visual, modular logic blocks
- **Structured Text (ST):** High-level, like Pascal
- **Instruction List (IL):** Deprecated, assembly-style
- **Sequential Function Chart (SFC):** State-based flowchart style

## Modbus TCP/IP Review

- Open, royalty-free client/server protocol
- **Register Types:**
    - Coils: 1-bit, R/W
    - Discrete Inputs: 1-bit, Read-only
    - Input Registers: 16-bit, Read-only
    - Holding Registers: 16-bit, R/W
- **Key Function Codes:**
    - FC01: Read Coils
    - FC02: Read Discrete Inputs
    - FC03: Read Holding Registers
    - FC04: Read Input Registers
    - FC05/06/15/16: Write Coils and Registers

## Protocol Structure

- **MBAP Header:** Transaction ID, Protocol ID, Length, Unit ID
- **PDU:** Function Code + Modbus Data
- Memorized through analogy: server as a "cabinet of drawers," each register like an addressable drawer.

## Next Action

- DIN Projects
- DIN Celsius Temperature Sensor
	- Document tutorial
	- Review Opta set up and pin mapping
	- Wire up DIN Celsius Sensor
	- Upload Basic Read Sketch