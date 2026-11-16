# Issue

**Title:** Keep modified residues in protein ligands

## Description

If the "keepmod" flag is used together with protein ligands (--chains or --inter or --peptides flag), modified residues are now kept as part of the ligand.
 
Code is extended by an if statement in the "getpeptides" function to check if config.KEEPMOD is True. Modified residues are kept as ligand residues if True.

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `979e56d559cd`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.