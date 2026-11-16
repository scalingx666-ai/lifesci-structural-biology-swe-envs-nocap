# Issue

**Title:** Fix colabfold image to run in gpu environments with new cuda drivers

## Description

The colabfold image has been updated to run in GPU environments, the corresponding dockerfile has been updated.

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `aebbd21933fc`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.