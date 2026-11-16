# Issue

**Title:** Fix/user feedback

## Description

Fixed user issue #185 and #186 . PDB as text flag does work as expected now and halogen bond ACC + DON coordinates are correctly assigned to protein and ligand.

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `eda548284ce3`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.