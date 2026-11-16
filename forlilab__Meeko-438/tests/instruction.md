# Issue

**Title:** fix: Polymer.to_pdb() reads positions from MoleculeSetups, not Monomer.rdkit_mol

## Description

The positions used in a docking are those in `Polymer.monomers[res_id].atoms[*].coord`, but `Polymer.to_pdb()` was reading from `Monomer.rdkit_mol.GetConformer()`. Before #341, the positions in `Monomer.rdkit_mol` were kept in sync with those in the molsetups.

This PR updates the positions of Hs in `Monomer.rdkit_mol` to the same positions in the molsetup. This affects only Hs that have their positions set by RDKit because they were missing in the input file. This PR also changes the behavior of `Polymer.to_pdb()` to use the positions in the molsetups, which are the ones meant to be used for docking.

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `eb9061527977`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.