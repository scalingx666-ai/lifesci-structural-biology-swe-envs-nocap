# Issue

**Title:** fix: enable specifying openff version

## Description

Enable specifying OpenFF version for both vdW and torsion parameters. The string "openff" still specifies openff-2.0.0 for backwards compatibility, but explicit versions are now supported, e.g. "openff-2.3.0".

## Type of change

- [x] Bug fix (non-breaking change which fixes an issue)
- [x] New feature (non-breaking change which adds functionality)


## Checklist:

- [x] Written a description of the feature or bug fix above. 
- [x] Ran pytest locally and all tests have passed.
- [ ] If applicable, documentation was updated with new feature. 
- [ ] Docstring included for any new classes/functions/methods, or for significantly modifed existing functions. 
- [x] (Optional) new test added to account for new feature.

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `d1cfd775aac8`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.