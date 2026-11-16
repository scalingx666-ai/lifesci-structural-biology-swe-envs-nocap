# Issue

**Title:** Release 0.9

## Description

### Added
- `DockArea::surfaces_count`
- `DockArea::iter_surfaces[_mut]`
- `DockArea::iter_all_tabs[_mut]`
- `DockArea::iter_all_nodes[_mut]`
- `Node::iter_tabs[_mut]`
- `Surface::iter_nodes[_mut]`
- `Surface::iter_all_tabs[_mut]`

### Breaking changes
- Upgraded to egui 0.24.
- Removed the deprecated `DockState::iter`.

### Deprecated
- `DockState::iter_nodes` – use `iter_all_nodes` instead.
- `DockState::iter_main_surface_nodes[_mut]` – use `dock_state.main_surface().iter()` (and corresponding `mut` versions) instead.

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `c12627498def`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.