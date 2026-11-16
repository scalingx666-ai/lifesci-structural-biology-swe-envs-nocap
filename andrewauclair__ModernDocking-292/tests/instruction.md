# Issue

**Title:** More deprecations

## Description

`Docking.pinDockable` and `Docking.unpinDockable` should have been deprecated and replaced with `Docking.autoShowDockable` and `Docking.autoHideDockable`.

Deprecating `Dockable.getHasMoreOptions` in favor of `Dockable.hasMoreMenuOptions`.

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `347538e54d41`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.