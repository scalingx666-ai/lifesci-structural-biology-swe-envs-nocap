# Issue

**Title:** Fix compilation on linux

## Description

Includes `<sys/time.h>` in plm.h. Also adds a cross-platform compilation test as a Github Action.

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `a5b633c213bb`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.