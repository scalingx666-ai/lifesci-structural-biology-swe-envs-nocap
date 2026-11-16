# Issue

**Title:** Release 0.14

## Description

## 0.14.0 - 2024-09-02

### Breaking changes

- Upgraded to egui 0.29.

### Changed

- `{DockState,Surface,Tree,Node}::{filter_map_tabs,map_tabs,filter_tabs,retain_tabs}` no longer require the predicate to
  implement `Clone`. ()

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `e33130ce4e25`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.