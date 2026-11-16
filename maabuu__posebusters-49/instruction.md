# Issue

**Title:** Try assigning bond orders as last resort in RMSD function

## Description

RMSD module:
- Try assigning bond orders from the reference molecule to the probe molecule if all else fails.

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `154aa5a99f42`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.