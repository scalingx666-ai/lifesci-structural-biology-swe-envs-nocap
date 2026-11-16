# Issue

**Title:** multi char chain label

## Description

* atom_properties needs char* for chain
* updates in places where that's used

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `e6783aecf3cc`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.