# Issue

**Title:** Add a small epsilon to the attractive term in the Gupta potential.

## Description

This pull request updates the Gupta potential in order to use a safe_sqrt in the loss function computation. This ensures that the resulting force computation will not have nan when the particles are spread out with distance greater than cutoff (leading the attractive term to be 0.).

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `a9d30175e2aa`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.