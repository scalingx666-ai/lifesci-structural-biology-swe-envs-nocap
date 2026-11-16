# Issue

**Title:** Fix `clear_background`

## Description

Adding a `CentralPanel` to the `show` method broke `clear_background` by drawing a background anyway. To fix this, I set the `CentralPanel`'s `Frame` fill colour to transparent.

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `38ae15797271`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.