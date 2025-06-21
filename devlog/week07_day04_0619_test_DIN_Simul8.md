# DEVLOG – Week 7, Day 4

**Date:** 2025-06-19  
**Phase:** P2  
**Time Logged:** 6.5 hours  
**Task:** Test DIN Simul8 input wiring with I1

---

## What I Did
- Connected DIN Simul8 pushbutton output to Opta input I1
- Wired through gray terminal block to simulate field signal
- Wrote ladder logic using `%IX0.1` to drive `%QX0.0`
- Configured TON (On-delay Timer) block to debounce signal
- Deployed logic to test push-to-light response using onboard relay

---

## What I Observed
- First press of Simul8 switch did not reliably trigger output
- Unfiltered contact bounce led to missed transitions
- IDE ladder block wiring visually cluttered; hard to trace
- `%IX0.1` confirmed receiving signal after applying delay
- Output relay Q0.0 toggled as expected after fix

---

## Fixes + Notes
- Added TON block with 200ms delay to filter bounce
- Moved test ladder into labeled rung for clarity
- Confirmed proper wiring from Simul8 output through terminal block to Opta input
- System remains unpowered externally — USB only for this test
- I2C and outputs not connected yet; isolated input testing only

---

## What’s Next
- Extend logic to support I2, I3, I4 for multi-input demo
- Document current wiring and tag map for project repo
- Add annotated photo to `04_assets/`
- Continue trainer build with full continuity check (next session)
