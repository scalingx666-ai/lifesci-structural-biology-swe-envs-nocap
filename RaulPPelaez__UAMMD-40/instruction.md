# Issue

**Title:** Fix initialization bug in PSE

## Description

PSE was ignoring the input temperature and dt.

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `0ca7ce758f5a`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.