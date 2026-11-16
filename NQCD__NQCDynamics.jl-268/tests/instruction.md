# Issue

**Title:** fix: correct mass factor in harmonic wigner distributions

## Description

Previously I had only used these where mass = 1 and the result is incorrect when using a different mass. This is fixed now.

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `b3e344689a1b`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.