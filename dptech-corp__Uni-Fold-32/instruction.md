# Issue

**Title:** optimize the memory efficiency for Inference

## Description

1, carefully update variables with in-place style  
2, remove some redundant variables

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `ba751f31ac57`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.