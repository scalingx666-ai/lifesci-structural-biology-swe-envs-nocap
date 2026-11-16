# Issue

**Title:** Fixed NaNs due to a JAX change in the behavior of np.sqrt at 0.

## Description

(no description provided in source PR)

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `2c5c4ab18b6a`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.