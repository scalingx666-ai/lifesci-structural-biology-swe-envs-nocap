# Issue

**Title:** Yn unimol2

## Description

add unimolv2 into unimol_tools: train predict get_repr
fix: when input is a dict of atoms and coordinates in get_repr, dict converted to ndarray incorrectly.

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `6fa4af5e3743`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.