# Issue

**Title:** remove ligand and alt res within chain

## Description

solve #189

## Cases to Test

### PDB Entries with Alternative Residue Conformation

* 3JQH
* 1EJG

###  PDB Entries with Amino Acid Ligands

* 3LSW
* 3L1L

## Something Should be Taken Care of

These changes assume the read-in PDB file contains enough information for `gemmi` to detect the entity type.

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `a435618b95ba`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.