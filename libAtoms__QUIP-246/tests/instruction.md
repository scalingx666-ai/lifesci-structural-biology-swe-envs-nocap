# Issue

**Title:** remove MAKEDEP throughout

## Description

It depends on `f90doc.py` which is old and buggy, and I suspect it doesn't work correctly anyway.

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `699101249434`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.