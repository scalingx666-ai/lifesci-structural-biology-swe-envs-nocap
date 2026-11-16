# Issue

**Title:** fix: prevent division by zero in charge corrections

## Description

## Description

Prevent division by zero when all charges are zero in code that makes sure that partial charges sum to an integer.

## Type of change

- [x] Bug fix (non-breaking change which fixes an issue)
- [ ] New feature (non-breaking change which adds functionality)
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

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `88e9050028d4`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.