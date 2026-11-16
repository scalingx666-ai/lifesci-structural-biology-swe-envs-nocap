# Issue

**Title:** add cycle_break attribute to molsetup Bond

## Description

This is to support a more general macrocyle bond breaking scheme in future autodock, which does not depend on atom types such as CG0/G0. Adds option `untyped_macrocycle` to `MoleculePreparation` to skip assigning the CG/G types, and to allow any rotatable bond to be broken for macrocycle sampling, instead of allowing only bonds between atoms of type C.

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `7f6e27a2905a`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.