# Issue

**Title:** Temporary Flag for Docking Event

## Description

Currently, this flag is only used when the framework performs an undock while floating. For now, the subsequent docking event is not temporary. In my mind, this makes sense. When the dockable is docked again, the action is not temporary.

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `2b50d8638900`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.