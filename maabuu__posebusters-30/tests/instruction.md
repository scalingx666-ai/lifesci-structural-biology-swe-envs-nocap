# Issue

**Title:** Energy ratio bug

## Description

Modules:
- Energy ratio: catch "divide-by-zero" error in energy_ratio.py identified by @amorehead in (#29)
-

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `b363659e9328`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.