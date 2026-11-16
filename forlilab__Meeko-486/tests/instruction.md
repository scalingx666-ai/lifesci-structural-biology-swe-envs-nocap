# Issue

**Title:** Adjacent padding

## Description

## Description

This PR addresses #485.

Now the user can choose to pad each residue in a receptor using either the old SMARTS reaction padders (relying on templates) or with adjacent residues. The latter is simpler and can avoid some errors, although pre-computed template charges are no longer possible. 

There relevant options are `--adj_padding` in the CLI and `adj_padding` in the Polymer class and appropriate polymer creation functions. 

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

Will probably need to add some tests for the new feature before merging.

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `de150540fe0c`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.