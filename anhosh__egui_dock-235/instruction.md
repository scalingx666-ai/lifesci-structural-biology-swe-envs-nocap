# Issue

**Title:** Release 0.12

## Description

## 0.12.0

### Breaking changes

- Upgraded to egui 0.27.

### Changed

- All `Style` structs are now serializable with `serde`. ()

### Fixed

- Dragging tabs around should no longer cause the `DockArea` to resize a tiny bit on every frame.
- Dragged tabs should now always follow the mouse exactly.

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `45a68a754b8f`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.