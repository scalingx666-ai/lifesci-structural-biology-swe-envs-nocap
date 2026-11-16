# Issue

**Title:** Align results and update unit tests

## Description

1. Align results. Max error of output is less than 5e-4 compared with openfold.
2. Fix some bugs in template, extramsa and evoformer.
3. Update some unit tests.

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `5856a30a4291`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.