# Issue

**Title:** Fix delete_residues in chorizo (polymer) and mk_prepare_receptor

## Description

The list of residue IDs to delete is no longer passed to the `__init__` of the chorizo object. Instead, it lives only on the constructors `from_prody` and `from_pdb_string`. Then, the raw molecules passed to the `__init__` of the chorizo no longer contains deleted residues. In `mk_prepare_receptor`, deleted_residues are specified using the same syntax as flexres, e.g. `--delete_residues A:278`.

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `31c4e24e4050`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.