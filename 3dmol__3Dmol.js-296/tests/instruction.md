# Issue

**Title:** Update VASP parsing for `addUnitCell` to work for POSCAR, CONTCAR files

## Description

Referencing #295 

My JavaScript is a bit rusty, but I think this should work? Would be happy to contribute further patches once my understanding of 3Dmol.js is improved.

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `c6a936df6b36`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.