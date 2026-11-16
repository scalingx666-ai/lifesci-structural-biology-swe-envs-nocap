# Issue

**Title:** chore: remove prints and progress bar from polymer

## Description

## Description

Remove print statements and progress bar from `Polymer.parameterize()` function. These are very useful when running `mk_prepare_receptor.py` for a single protein, but clutter the stdout when running things in batch. Also, print statements when using the Python bindings directly can be annoying.

Added classmethod `Polymer.from_pdb_file` to spare the user from loading file contents into a string. These method simply wraps the existing `Polymer.from_pdb_string`. Docs added.

## Type of change

- [ ] Bug fix (non-breaking change which fixes an issue)
- [ ] New feature (non-breaking change which adds functionality)
- [ ] Breaking change (fix or feature that would cause existing functionality to not work as expected)
- [x] Documentation update
- [x] Other (please describe):

## Checklist:

Please go through the following checklist before submitting the PR: 

- [x] Written a description of the feature or bug fix above. 
- [x] Ran pytest locally and all tests have passed.
- [x] If applicable, documentation was updated with new feature. 
- [ ] Docstring included for any new classes/functions/methods, or for significantly modifed existing functions. 
- [ ] (Optional) new test added to account for new feature.

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `5d36b45fdb3a`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.