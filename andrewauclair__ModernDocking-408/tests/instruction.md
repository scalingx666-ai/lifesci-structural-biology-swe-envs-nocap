# Issue

**Title:** Issue #407 - Fix Visibility of Pin Handles

## Description

Pin handles are now only visible when the dockable allows auto-hide in the specified position (west, east, south) and the root of the frame supports auto-hide on that toolbar (again, west, east, south).

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `43683f4b8bd1`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.