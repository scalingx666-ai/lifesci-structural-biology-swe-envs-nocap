# Issue

**Title:** Adjust positions of hydrogen isotopes as if they were regular Hs

## Description

This is for #295 and #298. 

Added a function `set_h_isotope_atom_coords` to replace `SetTerminalAtomCoords` for the assignment of H isotope coordinates with AddHs, and with preserved chirality if from input molecular graph. 

More description in comments.

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `c5e38dc909e1`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.