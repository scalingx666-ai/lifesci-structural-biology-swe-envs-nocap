# Issue

**Title:** Fix distributed seeding behavior

## Description

This adds workers=True to the Lightning seed_everything function which guarantees different random states across all processes in distributed training. Prior to that some processes on different GPUs with the same worker ID could share the same random state.

Note that this will break reproducibility between runs prior to and after this change.

Also removes the seed and suppress_output modules that were not used anymore in OpenFold.

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `ef0c9face788`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.