# Issue

**Title:** Consolidate gasteiger into ad4sol par

## Description

Add argument `override_ad4sol_par_including_q` to MoleculePreparation, which defaults to `False`. Works together with argument `override_ad4sol_par_including_q_qasp` which defines the `qasp` (float) value. When enabled, key `ad4_sol_par` in `molsetup.atom_params` is set to the default AD4 solvation parameter plus the absolute value of the Gasteiger charge after merging non-polar Hs. The goal is to enable the use of AD4 solvation with arbitrary charge models for electrostatics and arbitrary merging of Hs. Qasp must be set to zero during docking.

## Type of change

- [ ] Bug fix (non-breaking change which fixes an issue)
- [x] New feature (non-breaking change which adds functionality)
- [ ] Breaking change (fix or feature that would cause existing functionality to not work as expected)
- [ ] Documentation update
- [ ] Other (please describe):

## Checklist:

Please go through the following checklist before submitting the PR: 

- [ ] Written a description of the feature or bug fix above. 
- [x] Ran pytest locally and all tests have passed.
- [ ] If applicable, documentation was updated with new feature. 
- [ ] Docstring included for any new classes/functions/methods, or for significantly modifed existing functions. 
- [x] (Optional) new test added to account for new feature.

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `2cd6a7ac1a64`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.