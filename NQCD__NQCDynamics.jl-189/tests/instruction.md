# Issue

**Title:** refactor: DynamicsVariables constructors for FSSH and Ehrenfest

## Description

Previously these had lots of code repetition and led me into a couple of bugs. These changes minimise repetition and better maintainable moving forward.

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `34d32fdea161`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.