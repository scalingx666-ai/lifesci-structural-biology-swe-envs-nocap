# Issue

**Title:** fix distributed sampler for ddp and add dap

## Description

This pr contains 2 parts:
1. Add distributed sampler for ddp, which ensures every ddp group getting different data.
2. Add DAP for training. Unit test is not ready for now.

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `19ce840650fd`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.