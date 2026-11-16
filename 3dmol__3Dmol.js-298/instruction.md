# Issue

**Title:** Tests and fix for VASP addUnitCell

## Description

Referencing #295, #296 

`addUnitCell` now works correctly for VASP POSCAR/CONTCAR files, and a test has been added

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `a1c4c9e34c21`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.