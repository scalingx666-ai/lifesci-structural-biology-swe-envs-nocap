# Issue

**Title:** Fix worker launch and output completion in multi-process prediction

## Description

Fix missing workers in one-task SLURM allocations and wait for all prediction writes before returning. Preserve explicit plugins and device IDs; reject inconsistent worker counts.

Credits: @yjzhng reported #33; @zh3li proposed #272. This supersedes #272 and .

Tests: 20 passed on two PyTorch/Lightning versions. CPU processes tested; GPU/NCCL untested.

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `a07fea115311`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.