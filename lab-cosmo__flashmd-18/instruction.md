# Issue

**Title:** Override ASE's `Dynamics` functions to save memory

## Description

As in the title. On a single H100, now FlashMD on ASE can handle between 120k atoms (water, close to the worst-case scenario) and 300k atoms (Al, close to the best-case scenario).

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `ea01df136775`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.