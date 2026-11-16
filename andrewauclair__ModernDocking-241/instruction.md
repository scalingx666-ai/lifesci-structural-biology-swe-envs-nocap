# Issue

**Title:** Load and save layouts from IO streams.

## Description

Added `saveLayoutToOutputStream`, `saveWindowLayoutToOutputStream`, `loadApplicationLayoutFromInputStream`, `loadWindowLayoutFromInputStream` to `LayoutPersistenceAPI` so that library user can choose what type of backend use to store the layout data.

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `df1956353516`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.