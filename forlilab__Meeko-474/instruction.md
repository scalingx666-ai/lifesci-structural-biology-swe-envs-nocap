# Issue

**Title:** feat: added bad_res_radius feature, allowing to specify cutoff distance

## Description

## Description

This feature is addresses #473 

A new CLI option, `--bad_res_radius` is provided that allows the user to specify a cutoff radius (from the box center) outside of which bad residues will be ignored. If the bad residue falls within the specified cutoff radius, an error will be raised as usual. This is meant to be used in conjunction with `--allow_bad_res` / `--delete_bad_res`. A box specification is also necessary (or at the very lost, the box_center). 

From the API side, the same can be done by passing a `bad_res_radius` into the `Polymer.from_pdb_string()` (or `from_prody`, etc...) functions. This requires that the box_center (as an array) is also defined in the MoleculePreparation object:

```python
mk_prep = MoleculePreparation(box_center =....)

# or 

mk_config["box_center"] = np.array(....)
mk_prep = MoleculePreparation.from_config(mk_config)


# etc....

```

## Type of change

- [ ] Bug fix (non-breaking change which fixes an issue)
- [x] New feature (non-breaking change which adds functionality)
- [ ] Breaking change (fix or feature that would cause existing functionality to not work as expected)
- [ ] Documentation update
- [ ] Other (please describe):

## Checklist:

Please go through the following checklist before submitting the PR: 

- [x] Written a description of the feature or bug fix above. 
- [x] Ran pytest locally and all tests have passed.
- [x] If applicable, documentation was updated with new feature. 
- [x] Docstring included for any new classes/functions/methods, or for significantly modifed existing functions. 
- [x] (Optional) new test added to account for new feature.

## Additional Information

Diogo suggested an API change to meeko, so this feature may be temporary and will have to be rewritten.

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `508ce0ff894f`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.