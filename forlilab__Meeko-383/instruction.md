# Issue

**Title:** make forgiving of extra bonds optional

## Description

Reverts #347 in which excess bonds between residues are always allowed. Instead, forgiving extra bonds is triggered by command line option `--forgive_extra_bonds` in command line script `mk_prepare_receptor.py` and argument `forgive_extra_bonds=True` in `Polymer.__init__` as well as all three constructor class methods `from_pdb_string`, `from_pqr_string`, and `from_prody`.

Edit: addresses #354

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `dfaabed7df7d`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.