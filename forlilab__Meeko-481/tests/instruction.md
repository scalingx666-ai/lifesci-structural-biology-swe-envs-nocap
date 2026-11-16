# Issue

**Title:** fix: Update add_rotamers_to_polymer_molsetup to work with current Monomers.

## Description

This PR fixes `add_rotamers_to_polymer_molsetup` in `polymer.py` to accept the current Monomer id's not containing the residue name in the key.

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `5f995cb08975`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.