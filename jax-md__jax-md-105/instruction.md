# Issue

**Title:** Fixed bug when Behler-Parrinello network functions were jit.

## Description

Fixes JAX issue #4881.

Also, fixes the case where `species=None` is passed to BP symmetry functions.

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `b422d8f8726a`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.