# Issue

**Title:** Some Docking States Classes Should Have Been Deprecated and Were Missed

## Description

DockableState, PanelState, SplitState, and TabbedState should have deprecated as part of #194.

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `b5515881de91`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.