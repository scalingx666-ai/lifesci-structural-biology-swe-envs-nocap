# Issue

**Title:** Pipelines

## Description

Add prediction pipeline for nablaDFT.
- override AtomsDataModule from spk to add opportunity define pred dataset.
- define predict step for spk models.
- modify dataset classes to accept pred dataset as already prepared file, since such datasets are not listed in links list.
- fix graphormer3d predict_step function

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `a71eff95703f`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.