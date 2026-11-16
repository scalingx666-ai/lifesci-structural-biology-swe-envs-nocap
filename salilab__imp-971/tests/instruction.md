# Issue

**Title:** add a threshold parameter to the rasterization of gmm

## Description

This allows to better control the approximation made while rasterizing in "fast" mode.

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `ce9cc6a60483`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.