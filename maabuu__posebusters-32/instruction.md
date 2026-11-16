# Issue

**Title:** Fix return atom indexes of clashes

## Description

The function `check_intermolecular_distance` returned indexes of protein and ligand with respect to masks, not with respect to the original indexes. Thi fixes it.

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `58e75818c04f`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.