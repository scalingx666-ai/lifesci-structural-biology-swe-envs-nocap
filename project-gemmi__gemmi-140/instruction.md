# Issue

**Title:** topo: Fix modification of 5' end of RNA/DNA

## Description

With the current code, phosphate group of 5' end is ignored when creating topology

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `2d4a02fe070e`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.