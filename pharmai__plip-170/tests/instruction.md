# Issue

**Title:** Detection of charged functional groups in modified residues

## Description

Enables the detection of charged functional groups in modified residues.

Residue modifications can change existing or add new functional groups that may be charged (like phosphate). PLIP can now find these charged functional groups in modified residues.

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `ea15bc3f9e0c`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.