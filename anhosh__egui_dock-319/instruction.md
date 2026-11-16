# Issue

**Title:** fix!: skip translations when de/serializing DockState

## Description

There is no reason to serialize dock state and translations together, since the latter is often configured separately.

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `fe435413ea4d`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.