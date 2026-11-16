# Issue

**Title:** prepare_topology: more detailed message

## Description

Sometimes atoms removed by modification are reported. We need chain/residue information to track the error.

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `e4ca4e0b9f00`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.