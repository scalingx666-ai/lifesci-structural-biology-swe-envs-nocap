# Issue

**Title:** Fixes several mistakes in interaction detection with peptide ligands

## Description

Treating a protein chain as a ligand has only been implemented on a superficial level so far. The interaction detection and filtering routines were not adapted accordingly. This pull request addresses this issue in several places - see commit messages for details.

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `d9b1a5bd4113`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.