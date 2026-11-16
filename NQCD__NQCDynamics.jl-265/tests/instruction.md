# Issue

**Title:** Add `stats` field to calculators

## Description

This extra field can be used to check how many times each quantity is evaluated during a simulation. Useful for debugging and benchmarking. I also realise the `update_electronics!` functions were leading to some repeated evaluations so I have modified those to fix this.

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `c86eb9ba3012`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.