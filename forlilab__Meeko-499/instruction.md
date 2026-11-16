# Issue

**Title:** delete receptor pdbqt class and methods

## Description

## Description

delete class PDBQTReceptor and methods, as this was moved to Ringtail (the only known user)

## Type of change

- [ ] Bug fix (non-breaking change which fixes an issue)
- [ ] New feature (non-breaking change which adds functionality)
- [ ] Breaking change (fix or feature that would cause existing functionality to not work as expected)
- [ ] Documentation update
- [X] Other (please describe): delete unused class

## Checklist:

Please go through the following checklist before submitting the PR: 

- [ ] Written a description of the feature or bug fix above. 
- [ ] Ran pytest locally and all tests have passed.
- [ ] If applicable, documentation was updated with new feature. 
- [ ] Docstring included for any new classes/functions/methods, or for significantly modifed existing functions. 
- [ ] (Optional) new test added to account for new feature.

## Additional Information

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `1eac18bd6d11`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.