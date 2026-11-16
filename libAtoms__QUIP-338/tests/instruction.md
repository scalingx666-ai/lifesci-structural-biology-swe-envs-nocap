# Issue

**Title:** Gcc10

## Description

fix for #337 

in fact it was easy enough to fix the routine level imports and let the compiler know that these exist on top of being available in the namespace compile time

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `0fe26e069e00`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.