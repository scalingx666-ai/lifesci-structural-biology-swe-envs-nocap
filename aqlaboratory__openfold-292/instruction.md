# Issue

**Title:** Fix comparison for max_seqlen when downloading CAMEO.

## Description

Long sequences were previously not excluded during download. This commit changes the comparison to exclude sequences with length greater than `args.max_seqlen`. It also collapses a nested if-statement.

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `7c32b79f2ea1`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.