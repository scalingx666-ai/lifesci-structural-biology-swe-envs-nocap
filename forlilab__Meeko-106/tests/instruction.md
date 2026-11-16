# Issue

**Title:** optionally allow breaking macrocycle bonds with A atom types

## Description

Some macrocycles don't have a bond between two atoms of type C, but often there's a C-A bond. For example: https://www.rcsb.org/ligand/5P8 This PR allows breaking bonds between atoms of type A, including A-A bonds, with the caveat that parameters of C will be used for A atoms of broken bonds.

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `b22a8f621566`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.