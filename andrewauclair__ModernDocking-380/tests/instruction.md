# Issue

**Title:** Issue #377

## Description

This issue was previously fixed in #59. The changes to prevent docking to the center of non-empty frames might be to blame for it not working now.

For now, when a floating frame closes, we'll return non-floatable dockables to the south of the main frame.

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `03fe59ba50ea`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.