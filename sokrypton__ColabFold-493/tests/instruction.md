# Issue

**Title:** Fix CFMMCIFIO _struct_asym.id values

## Description

In `CFMMCIFIO` (which is used by `convert_pdb_to_mmcif`), map the chain ID to the `_atom_site.label_asym_id`, which corresponds to `_struct_asym.id`.

Should fix  and 

@data2code @jkosinski

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `e9dc2d55230c`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.