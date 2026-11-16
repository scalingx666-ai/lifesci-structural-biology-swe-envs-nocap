# Issue

**Title:** Make ShapedArray imports compatible with jax==0.4.14 deprecation.

## Description

Jax 0.4.1.4 deprecated importing `ShapedArray` from `jax`. Changed all `ShapedArray` imports to come from `jax.core`.

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `b9a31162a07d`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.