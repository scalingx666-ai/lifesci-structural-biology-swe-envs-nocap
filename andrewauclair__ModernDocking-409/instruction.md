# Issue

**Title:** Issue #376 - Windows will no longer switch order until the user mouses over the window that is not in the foreground.

## Description

This was an edge case, but it's a nice cleanup fix.

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `43683f4b8bd1`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.