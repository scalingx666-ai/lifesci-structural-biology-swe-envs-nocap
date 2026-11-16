# Issue

**Title:** Refactor/matrix pointers

## Description

Make matrix components pointers for optional memory savings. Default to allocatable-like behaviour, including `final` procedure.

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `e13f187b2661`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.