# Issue

**Title:** Configure prediction without initializing unavailable CUDA

## Description

Skip CUDA capability queries when CUDA is unavailable and default to at least one device. Preserves explicit overrides.

Credit: @Sharon-codes reported #187. .

Tests: nine passed on two PyTorch/Lightning versions. Covers configuration, not full CPU inference.

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `a07fea115311`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.