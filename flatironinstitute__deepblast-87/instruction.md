# Issue

**Title:** Small setup.py fixes

## Description

This pull request adds the missing biopython and `deepblast/pretrained_models/lstm2x.pt` to setup.py. The `lstm2x.pt` part is required because without it language_model.py doesn't find the model when installed through pip instead of checking out the repository.

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `8597e75986d0`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.