# Issue

**Title:** Make RMSD even more robust

## Description

* Makes the RMSD module even more robust (e.g., when no matching between two molecules is found by RDKit)

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `115846bb09b5`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.