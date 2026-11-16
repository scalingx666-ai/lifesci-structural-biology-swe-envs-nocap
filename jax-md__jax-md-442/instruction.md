# Issue

**Title:** Fix UMA batching on JAX 0.12, per-axis fractional cell lists, int32 neighbor indices, dsf_coulomb and TPU grid errors

## Description

, plus four bugs found while working on #431.

## Checklist

- [x] Tests added/updated and passing
- [x] Appropriate labels added to PR

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `cfcd99e8b7c0`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.