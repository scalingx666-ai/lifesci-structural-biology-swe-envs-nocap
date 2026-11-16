# Issue

**Title:** Export flexible residues from PDBQTMol

## Description

from_pdbqt_mol in rdkit_mol_create now includes flexible residues. This means that mk_copy_coords also includes flexible residues.

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `c1b629011628`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.