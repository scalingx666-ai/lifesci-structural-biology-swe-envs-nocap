# Issue

**Title:** refactor(pdb): remove unneeded explicit padding from tag rows

## Description

small PR, reduces the number of row types that use explicit padding to 3 (tracks, artists and albums)

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `adcc9755179d`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.