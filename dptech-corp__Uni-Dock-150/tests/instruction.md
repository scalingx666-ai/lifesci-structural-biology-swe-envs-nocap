# Issue

**Title:** Update main.cpp . CLASSIFY LIGANDS WITH 160-300 ATOMS IN MaxGroup

## Description

Added else if to classify ligands wwith number of atoms between 160 and 300. Actual version missed the ligands that should be added to maxGroup.

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `9dc74354ecd7`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.