# Issue

**Title:** update function to write PDB from chorizo, and fix a bug that ignored input H positions

## Description

Minor changes with regards to `LinkedRDKitChorizo.to_pdb()`, just keeping up to date with all the recent refactoring.

H position on link atoms, which are atoms that have bonds to adjacent residues, were being replaced by RDKit calculated positions. This is now fixed.

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `8963c1048e6c`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.