# DEVLOG – Week 12, Day 2

**Date:** 2025-07-24  
**Location:** Home PLC Lab  
**Time Logged:** 10 hours  
**System:** GitHub (Web + Desktop), Local Windows Development  
**Branch:** `main`  
**Commit ID:** _(several – see below)_

---

## Task Summary

**Planned:**

- Finalize the project’s GitHub structure for curriculum distribution
    
- Remove non-essential files and IDE-generated clutter
    
- Improve code visibility and documentation readiness
    

**Actual:**

- Created clear folder structure for modular navigation
    
- Implemented `.gitignore` and `.gitattributes` for cleanliness and parsing
    
- Established method for sharing Ladder Logic and ST code
    
- Wrote project README and initialized `02_code_samples/`
    
- Verified readiness for public push and grant review
    

---

## System / Build Updates

- New project folder layout:
    
    ```
    /00_overview/        → Project intro, goals, and scope  
    /01_modules/         → Curriculum modules 00–03  
    /02_code_samples/    → ST and Ladder Logic source  
    /03_assets/          → Diagrams, wiring screenshots, logic captures  
    /04_hardware/        → Opta, DIN Simul8, TMP236 datasheets  
    /devlog/             → Day-by-day development logs  
    /docs/               → Grant materials, final reflections  
    ```
    
- `.gitignore` includes:
    
    - Build cache
        
    - PLC sketch metadata
        
    - IDE-generated backups
        
- `.gitattributes` maps `.st` files to Pascal for correct GitHub syntax highlighting
- `01_modules/03_celsius/` updated with:
	
	- Full student-facing guide
	    
	- Instructor reference version
	    
	- Linked logic files (ST + ladder screenshot)

---

## Diagnostics and Testing

- Verified GitHub repo language display after `.gitattributes` update
    
- Confirmed `.gitignore` filters temporary Arduino PLC IDE files
    
- Manually tested README clarity and asset reference consistency
    
- Exported screenshots of folder structure for documentation record
- Cross-checked each curriculum module for proper linkage to code samples
    

---

## Key Findings and Learnings

- Arduino PLC IDE bloats project directories with redundant system files
    
- GitHub parsing requires manual override to recognize Structured Text
    
- Presenting both Ladder Logic screenshots and ST pseudocode enables clarity across user types
    
- Folder structure helps segment the student vs instructor experience cleanly
    
- Early cleanup reduces future confusion during curriculum integration or handoff
- Having a 1:1 pairing between modules and working code sets the foundation for future workshop scaling
    

---

## Issues and Fixes

**Issue:** GitHub showed incorrect primary language (C++ instead of ST)  
**Fix:** Added `.gitattributes` to force `.st` as Pascal

**Issue:** Uploading full IDE projects cluttered repo and made it hard to track changes  
**Fix:** Replaced with minimal extracted `.st` files and screenshots of Ladder

**Issue:** README lacked clarity about code location and curriculum intent  
**Fix:** Rewrote to reflect research scope, structure, and modular layout

**Issue:** Module 03 lacked a finalized guide  
**Fix:** Completed both student and instructor versions and connected to working code

---

## Next Actions

- Add `.st` and `.txt` logic files for current modules to `02_code_samples/`
    
- Create ladder logic pseudocode and image capture for each logic block
    
- Finalize `FINAL_REFLECTION.md` and documentation inside `/docs/`
    
- Consider adding a table of contents to the README or migrating to GitHub Pages
    

---

## Files / Commits / References

- Main commits:
    
    - `README.md` created and pushed
        
    - `.gitignore` and `.gitattributes` configured
        
    - `02_code_samples/` scaffolded with placeholder logic
    - `01_modules/03_celsius/` finalized with all guides and linked code
        
- Screenshots: Folder layout documented (2025-07-24)
    
- GitHub repo: `plc-student-demo-platform` (private until publish)
    
- Notes: Obsidian entry for 2025-07-24 – folder validation and repo prep
    

---

## Reflections / Notes

The repo finally feels presentable. The structure now serves both the research spine and student experience. There’s still a lot of technical nuance in how Arduino handles its file system, but by separating logic from the PLC IDE project files, the educational clarity is much higher.

Finishing the Module 03 curriculum marked a key milestone. Writing both versions side-by-side forced a clear distinction between what students need versus what instructors must be prepared to guide. With all modules now tied to working code, the groundwork is solid for future workshops and grant reviews.

This cleanup was necessary to prepare for sharing the project as a model curriculum and to allow future instructors or collaborators to contribute with minimal confusion.

---

## Tags

`#plc` `#opta` `#week12` `#repo` `#projectstructure` `#github` `#codecleanup` `#documentation` `#structuredtext` `#ladderlogic` `#devlog`

---
