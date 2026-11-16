# Issue

**Title:** Slightly nicer (I think) formatting of a few items.

## Description

Usually, resolution values are given in order low-resolution (low d* value, low diffraction angle) to high-resolution (high d* value, high angle) ... even if the d values (in Angstroem) run the other way ;-)

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `25c3a2d41f65`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.