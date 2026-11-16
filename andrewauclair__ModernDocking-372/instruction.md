# Issue

**Title:** Issue #371

## Description

Set the hidden flag properly in the DockableWrapper when showing and hiding auto hide dockables in DockableToolbar. Also setting the hidden flag anywhere else that fireHiddenEvent or fireShownEvent is called.

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `cb69cbcf9bad`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.