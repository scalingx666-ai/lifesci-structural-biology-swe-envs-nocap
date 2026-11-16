# Issue

**Title:** error message added if pdb res not built into rdkit mol

## Description

If unable to successfully convert a pdb residue to an RDKit molecule (done via the function `aux_altloc_mol_build`), an error message has been added specifying the corresponding residue name and id. Issue occurred because `Chem.SanitizeMol` returned an error for residues with chemical violations that were induced during restrained minimization.

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `12df59da0884`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.