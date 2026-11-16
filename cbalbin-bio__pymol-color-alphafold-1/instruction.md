# Issue

**Title:** Accept arbitrary selections

## Description

Allows coloraf to accept arbitrary selections rather than only models. Models valid selections, so the previous behavior still works.

The selection defaults to 'all' so the command can be used quickly without arguments.

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `3a02e4c3004b`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.