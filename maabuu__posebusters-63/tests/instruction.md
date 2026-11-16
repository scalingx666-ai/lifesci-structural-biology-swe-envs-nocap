# Issue

**Title:** Terminal conjugated bonds in distance geometry checks

## Description

A follow-up of  inspired by what we have in https://github.com/rdkit/rdkit/blob/master/Code/GraphMol/MolAlign/AlignMolecules.cpp#L27

Changes the distance geometry check for some terminal conjugated bonds: 
- gets the bonds from a SMARTS match to a conjugated bond template
- since to my understanding, the conjugated bonds are usually between a single/double, it groups all those bonds by atom types
- for each set of atom types (C--O, N--O), the lower/higher bound will be the minimum/maximum of the lower/higher bounds with this atom type.

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `48e3542c7dfd`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.