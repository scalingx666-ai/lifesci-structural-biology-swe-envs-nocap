# Issue

**Title:** fix: set covalent radious of Cu and K to zero

## Description

## Description

Covalent radius of metals and salts are set to zero to prevent bond perception with neighboring residues. This is necessary because the templates are designed for a non-bonded model.

## Type of change

- [x] Bug fix (non-breaking change which fixes an issue)
- [ ] New feature (non-breaking change which adds functionality)
- [ ] Breaking change (fix or feature that would cause existing functionality to not work as expected)
- [ ] Documentation update
- [ ] Other (please describe):

## Checklist:

Please go through the following checklist before submitting the PR: 

- [ ] Written a description of the feature or bug fix above. 
- [ ] Ran pytest locally and all tests have passed.
- [ ] If applicable, documentation was updated with new feature. 
- [ ] Docstring included for any new classes/functions/methods, or for significantly modifed existing functions. 
- [ ] (Optional) new test added to account for new feature.

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `c7b9bd106003`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.