# Issue

**Title:** Allow for 6-vectors when reading xyz files

## Description

Allow either 3- or 6-vectors when reading xyz files.  9 is still automatically cast to 3x3 matrix.

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `609ca46c4011`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.