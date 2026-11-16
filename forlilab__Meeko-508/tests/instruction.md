# Issue

**Title:** add Monomer.to_pdb() to write residue-level PDB strings

## Description

## Description

Enables writing a PDB string for a Monomer. Purpose is writing a PDB file with receptor flexible side chains, to avoid repeating the static atoms for a large number of poses, saving disk space.

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
- [x] Docstring included for any new classes/functions/methods, or for significantly modifed existing functions.
- [ ] (Optional) new test added to account for new feature.

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `f1718c20e5af`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.