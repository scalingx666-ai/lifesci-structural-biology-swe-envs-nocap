# Issue

**Title:** Long integer kind

## Description

Adds explicit kind variables for 4-byte and 8-byte integers, plus concat operator for long integer.

Putting all kinds into a module for clarity and possible future extensions.

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `126c8926c9aa`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.