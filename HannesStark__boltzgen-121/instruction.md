# Issue

**Title:** Add per-chain sequences to metrics when designing multiple chains

## Description

Currently the metrics csvs only contain the full chain sequence for the first designed chain, and all of the designed sequences concatenated. This change adds per-chain designed sequences and per-chain full sequences for each designed chain to the metrics csv.

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `b5d532b97a0a`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.