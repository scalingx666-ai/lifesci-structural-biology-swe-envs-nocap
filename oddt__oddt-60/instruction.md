# Issue

**Title:** Fix PLEC with HOH coordinating metal

## Description

In situations as in `3kwa` there might be a water molecule coordinating metals, that some software might bind together. This way it will pop up in environment of Zn and its representation is required.

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `c0dd1da56bbb`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.