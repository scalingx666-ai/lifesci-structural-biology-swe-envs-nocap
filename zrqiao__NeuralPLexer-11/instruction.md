# Issue

**Title:** Additions and fixes for inference.py

## Description

* Allows one to produce ligand __and__ protein PDB file outputs.
* Allows one to specify the index of the particular CUDA device to use.
* Adds a preliminary means of rank-ordering protein and ligand file outputs, by default, by ligand plDDT (if available) or protein plDDT otherwise.
* @zrqiao, please advise on this implementation of plDDT output ranking. Does it make sense to rank protein-ligand output pairs, by default, by the predicted ligand plDDT (or instead the predicted protein plDDT - which is more informative for ranking do you think?)

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `689cfa28db37`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.