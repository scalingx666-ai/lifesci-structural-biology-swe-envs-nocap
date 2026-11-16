# Issue

**Title:** Export residue-level PDB plDDT values

## Description

* Adds `b_factor` argument to PDB writing functions in `pipeline.py`
* Provides residue-level annotation of plDDT values in each output protein PDB file (when available)
* When ranking output files by confidence scores, also lists the average plDDT value in each output protein and ligand filename

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `c2fa16946bfa`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.