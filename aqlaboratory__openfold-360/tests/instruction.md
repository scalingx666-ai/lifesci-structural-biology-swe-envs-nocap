# Issue

**Title:** Installation updates

## Description

- Installation scripts now assumes user has their own version of Anaconda, and provides instructions on how to download anaconda separately.
- Upgrades OpenMM package to use OpenmM 7.7.0 and removes patches
- Updates README instructions

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `2300f6720d9d`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.