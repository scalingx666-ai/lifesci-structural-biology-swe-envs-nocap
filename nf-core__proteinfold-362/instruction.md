# Issue

**Title:** Update boltz Dockerfile and image pinging specific version (2.0.3)

## Description

Update boltz image after pinging version `2.0.3`, the image `quay.io/nf-core/proteinfold_boltz:dev` has also been updated though in principle the version was the same version.
N.B the image has not been updated to the latest version as it needs other dependencies (left some comments on the Dockerfile)

## PR checklist

- [x] This comment contains a description of changes (with reason).
- [x] Make sure your code lints (`nf-core lint`).
- [x] `CHANGELOG.md` is updated.

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `45c1bbc26a19`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.