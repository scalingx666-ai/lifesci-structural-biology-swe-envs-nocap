# Issue

**Title:** Fix the potential invalid memory access (not only in PME)

## Description

Related to #134

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `4100f80f44b5`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.