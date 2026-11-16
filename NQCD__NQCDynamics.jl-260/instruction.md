# Issue

**Title:** Update NQCBase

## Description

The new version removes a type parameter from `Atoms` so I have removed all instances where this appears. This will give much faster compilation times when using lots of atoms.

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `2cec8eb9b307`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.