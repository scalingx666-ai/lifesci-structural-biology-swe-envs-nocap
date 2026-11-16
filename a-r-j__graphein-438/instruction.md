# Issue

**Title:** [pre-commit.ci] pre-commit autoupdate

## Description

<!--pre-commit.ci start-->
updates:
- https://github.com/psf/black → https://github.com/psf/black-pre-commit-mirror
- [github.com/psf/black-pre-commit-mirror: 25.1.0 → 25.12.0](https://github.com/psf/black-pre-commit-mirror/compare/25.1.0...25.12.0)
- [github.com/pycqa/isort: 6.0.1 → 7.0.0](https://github.com/pycqa/isort/compare/6.0.1...7.0.0)
<!--pre-commit.ci end-->

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `9a47dafb3566`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.