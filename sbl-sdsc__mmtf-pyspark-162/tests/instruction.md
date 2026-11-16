# Issue

**Title:** downgraded spark version

## Description

Python kernel does not start since upgrading to spark 2.4.0. Downgrading to 2.3.1 to see if that is causing the problem.

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `06e112dbf48d`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.