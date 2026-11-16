# Issue

**Title:** fix: Polymer.to_rdkit_mol with user specified residues - thanks Andreas

## Description

## Description

When only a few selected residues are to be stiched (converted to rdkit mol), the loop that iterates through the bonds was looping over all residues, not just the selected one. Now it loops over only the bonds relevant to the selected residues.

## Type of change

- [x] Bug fix (non-breaking change which fixes an issue)
- [ ] New feature (non-breaking change which adds functionality)
- [ ] Breaking change (fix or feature that would cause existing functionality to not work as expected)
- [ ] Documentation update
- [ ] Other (please describe):

## Checklist:

Please go through the following checklist before submitting the PR: 

- [ ] Written a description of the feature or bug fix above. 
- [x] Ran pytest locally and all tests have passed.
- [ ] If applicable, documentation was updated with new feature. 
- [ ] Docstring included for any new classes/functions/methods, or for significantly modifed existing functions. 
- [ ] (Optional) new test added to account for new feature.

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `9d1a137bcda3`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.