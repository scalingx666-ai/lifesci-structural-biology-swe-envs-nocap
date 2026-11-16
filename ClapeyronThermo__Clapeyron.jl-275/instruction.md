# Issue

**Title:** LKP updates

## Description

- add modified LKP (refit of the original LKP, with better behaviour for heavy mixtures)
- add enhanced LKP (instead of using MBWR, use reference EoS as interpolation points)

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `db1298940c7b`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.