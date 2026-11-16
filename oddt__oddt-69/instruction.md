# Issue

**Title:** Fix (Simple) Interaction Fingerprints

## Description

There was a problem with SIFP that led to `IndexError` for multiple interacting residues, which is now fixed. Also there was a small bug in SIFP that mixed pi-stacking perpendicular and parallel interactions.

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `9d5ba2d8f7bc`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.