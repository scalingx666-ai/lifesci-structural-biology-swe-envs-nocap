# Issue

**Title:** Merge Development for Dependency Fix

## Description

- `setup.py` contained an invalid dependency, which was removed
-

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `c8d4c8dbe9e2`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.