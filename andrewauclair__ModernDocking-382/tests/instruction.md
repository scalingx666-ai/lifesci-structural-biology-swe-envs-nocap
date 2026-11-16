# Issue

**Title:** Auto-Hide Panel Fixes

## Description

For #350: Auto-hide panel sizes now properly persist and restore A single auto-hide panel can be open at a time now.

For #375: Further refactor of the DockableToolbar to use DockableWrapper instead of Dockable to prevent incorrect comparisons. This fixes the issues seen where buttons would duplicate on the toolbar.

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `22b06ae2a616`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.