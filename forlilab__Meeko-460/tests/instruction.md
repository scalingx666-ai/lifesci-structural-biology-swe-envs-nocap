# Issue

**Title:** feat: exclude parameters in UniqAtomParams

## Description

Add option to exclude parameters when adding to UniqAtomParams. The resulting set of unique parameters will not consider the excluded parameters. Option is named `remove_params` and is available in the `add_molsetup` method.

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
- [ ] If applicable, documentation was updated with new feature. 
- [ ] Docstring included for any new classes/functions/methods, or for significantly modifed existing functions. 
- [ ] (Optional) new test added to account for new feature.

## Additional Information

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `775c01cb8166`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.