# Issue

**Title:** Ensure the position contraint in strain calculation works

## Description

1. Change the force constant to 1.0e5 to ensure that the position constraint added in strain energy calculation is correctly implemented.
2. Add another relaxation on the given pose to ensure that strain energy is always positive.
3. Pin the pandas version to avoid environment issues.

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `54896560e7d9`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.