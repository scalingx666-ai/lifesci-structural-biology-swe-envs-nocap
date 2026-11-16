# Issue

**Title:** fix: vina sulfur is not H-bond donor

## Description

## Description

Remove `vina_donor=True` for thiol group, leaving all S atoms with `vina_donor=False`, matching the original vina implementation as Sulfur has only one type in Vina, `X_S`, which is not H-bonding. Thiolate groups are still modeled as H-bond acceptors, as that's the reasonable thing to do, even though it differs from original Vina. The rationale is added in a README file alongside the JSON file.

## Type of change

- [x] Bug fix (non-breaking change which fixes an issue)
- [ ] New feature (non-breaking change which adds functionality)
- [ ] Breaking change (fix or feature that would cause existing functionality to not work as expected)
- [ ] Documentation update
- [ ] Other (please describe):

## Checklist:

Please go through the following checklist before submitting the PR:

- [x] Written a description of the feature or bug fix above.
- [ ] Ran pytest locally and all tests have passed.
- [x] If applicable, documentation was updated with new feature.
- [ ] Docstring included for any new classes/functions/methods, or for significantly modifed existing functions.
- [ ] (Optional) new test added to account for new feature.

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `5b3618a34d08`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.