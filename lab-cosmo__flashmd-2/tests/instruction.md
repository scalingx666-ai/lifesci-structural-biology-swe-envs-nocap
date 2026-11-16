# Issue

**Title:** Runtime random rotation to compensate equivariant errors

## Description

Uses a different random rotation at each step to avoid accumulation of small equivariant errors.

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `8bab0637f7d9`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.