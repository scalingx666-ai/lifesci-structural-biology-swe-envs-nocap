# Issue

**Title:** feat: speed up (and rename) polymer.stitch function.

## Description

This renames the Polymer.stitch function to `to_rdkit_mol` though an alias `stitch` function is also created for backward compatibility. 

The function is modified for some significant speed up,

1. The function `find_inter_mols_bonds` is not called if it is not needed, since that was already called in the polymer creation. Instead, a class variable is defined that contains the bonds. 
2. The combination of the mols is modified to happen in NlogN time rather than N^2 time. This achieves a significant speed up.

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `7d104574b7f4`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.