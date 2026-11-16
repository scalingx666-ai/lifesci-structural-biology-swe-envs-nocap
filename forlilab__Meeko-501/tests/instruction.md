# Issue

**Title:** mk_prepare_receptor.py --config_preset [ad4, vina, scofu-1.0]

## Description

Add vina and scofu configurations to save receptor JSON with preset parameters. Option `--config_preset` in `mk_prepare_receptor.py` now accepts `vina`, `ad4`, and `scofu-1.0`.

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

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `6529f2a7b7ea`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.