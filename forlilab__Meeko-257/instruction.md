# Issue

**Title:** Use utility functions in jsonutils to fix #151

## Description

This is for #151. Used existing utility functions in [jsonutils](https://github.com/forlilab/Meeko/blob/release/meeko/utils/jsonutils.py), tuple_to_string and string_to_tuple to enable encoding and decoding of rotamers data of `rotamers` data for `MoleculeSetup` and `dihedral_partaking_atoms` and `dihedral_labels` for `RDKitMoleculeSetup`. 

@diogomart Could you please review the fixes and let me know if they work as expected? Additionally, I would like to become more familiar with parameter passing, if we might want to store Amber (and other) force field parameters in the future. This is not urgent, please feel free to advise at your convenience

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `07a38f8bac4a`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.