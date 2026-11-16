# Issue

**Title:** ML-IAP pytest code

## Description

pytest code for ML-IAP

- mliap.pt default file name 정할 때 조건 수정
- torch.as_tensor에서 keyword 명시 안 할 때 버그나는 경우가 있어서 keyword 추가

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `a7338954747e`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.