# Issue

**Title:** Interface interaction visualization with dashed lines

## Description

## Summary
- **Interaction classification**: Categorizes interface contacts as H-bonds (≤3.5Å N/O donors), salt bridges (≤4.0Å charged residues), hydrophobic contacts (≤4.5Å C-C), or other
- **3D visualization**: Dashed lines between interacting atom pairs in HD/FullHD modes, solid lines in Braille, color-coded by type (cyan/red/yellow/gray)
- **Toggle**: `Shift+I` when interface mode (`f`) is active. Off by default.
- **UI indicators**: Sidebar shows interaction counts with color legend, status bar shows "Interactions" when active

## Changes (3 commits)
- `0abcf32` feat: add interface interaction classification and UI controls
- `5284c8e` feat: add dashed interaction lines for interface visualization
- `8fd6f95` feat: add interface interactions to help overlay and helpbar

## Test plan
- [ ] Load a multi-chain protein (e.g., `--fetch 1ZVH` or `examples/1AOI.pdb`)
- [ ] Press `f` to enable interface mode — sidebar shows interface summary
- [ ] Press `I` (Shift+I) — dashed interaction lines appear in viewport
- [ ] Rotate protein — interaction lines move correctly with z-buffering
- [ ] Status bar shows "Interactions" indicator
- [ ] Sidebar shows interaction type counts and color legend
- [ ] Press `I` again — interactions toggle off, lines disappear
- [ ] Press `f` — interface mode off, interactions also dismissed
- [ ] Verify all 3 render modes (Braille/HD/FullHD) show interactions
- [ ] `I` does nothing when interface mode is not active

🤖 Generated with [Claude Code](https://claude.com/claude-code)

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `4da59911b5f5`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.