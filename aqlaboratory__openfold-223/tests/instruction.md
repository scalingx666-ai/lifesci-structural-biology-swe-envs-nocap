# Issue

**Title:** Set clamped vs unclamped FAPE for each sample in batch independently

## Description

Previously, whether to use clamped vs unclamped FAPE backbone loss was decided once for all samples in the mini-batch.

Now, clamped vs unclamped FAPE backbone loss is decided for each sample in the mini-batch independently. This brings substantial improvements to training convergence and stability.

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `a1f77ad0180f`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.