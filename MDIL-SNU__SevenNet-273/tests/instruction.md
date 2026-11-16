# Issue

**Title:** Add omni-large models

## Description

- Add omni-i8 and omni-i12 models in pretrained models and update docs
- Bump torch=2.4.0 for github pytest (issue related to numpy=2)  #264

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `4af45c158eff`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.