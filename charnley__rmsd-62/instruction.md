# Issue

**Title:** Implemented principal axis alignment before reorder.

## Description

As suggested by @charnley in #61 , implemented the alignment of the axis of inertia before reordering to provide a better alignment for the reorder algorithms.

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `ab68afdfac70`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.