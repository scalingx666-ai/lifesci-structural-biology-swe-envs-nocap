# Issue

**Title:** remove pandas dependency for tests

## Description

Tests do not require pandas but setup.py was still listing it.

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `58b6e652c636`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.