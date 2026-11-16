# Issue

**Title:** Added fast rasterisation of GMMs

## Description

The "fast" version uses a distance cutoff to avoid evaluating the
contribution of distant Gaussians.

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `983e63d54f69`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.