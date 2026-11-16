# Issue

**Title:** make tabs scrollable when there are too many

## Description

Attempt to fix #42 by making tab bar scroll-able (with mouse wheel) when tabs overflow.

This is very much work in progress as it does not handle expand tab option and likely won't work on touch devices.

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `6169753a1143`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.