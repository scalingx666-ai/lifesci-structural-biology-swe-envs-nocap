# Issue

**Title:** Change `DockArea` api to look a bit more like other egui containers

## Description

Changes : 
- Does not own Tree
- Does not need to be stored
- Use a builder style API to change the id, the style and show with ctx or inside an ui

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `333f6dc4a24c`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.