# Issue

**Title:** feat: Atom selection with geometric measurements

## Description

## Summary
Adds click-to-select functionality for atoms with a detailed info panel showing positions and geometric measurements.

## Features
- Click to select atoms (up to 3 shown in detail panel)
- Click same atom twice to deselect
- Shift+click to multi-select
- **2 atoms selected**: Shows distance between them
- **3 atoms selected**: Shows all distances and angles
- Clear selection button
- Auto-reset selection when loading new simulation

## Implementation
- Created `SelectedAtomsInfo` component in top-left corner of canvas
- Integrated with omovi v0.12.1 particle picking
- Uses absolute positioning to stay within canvas area
- Calculates real-time geometric measurements

## UI
- Semi-transparent panel matching simulation summary style
- Position display with 2 decimal precision
- Distance in Ångströms (3 decimal precision)
- Angles in degrees (1 decimal precision)

Builds on the particle picking feature from omovi to provide detailed atom analysis.

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `7e3f56eba2dc`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.