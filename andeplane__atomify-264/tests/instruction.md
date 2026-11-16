# Issue

**Title:** feat: update camera planes based on simulation box bounds

## Description

## Summary

Fixes camera near/far clipping planes to properly include the simulation box from atomify.

## Changes

- Added `getSimulationBoxBounds` utility function to calculate axis-aligned bounding box from simulation box (cell matrix + origin)
- Added `updateCameraPlanes` method to Visualizer that adjusts near/far planes based on bounding box size
- Integrated camera plane updates when simulation box changes
- Falls back to system bounds from particles/bonds when simulation box is not available

## Technical Details

- Near plane: `max(diagonal * 0.001, DEFAULT_CAMERA_NEAR)` to avoid z-fighting
- Far plane: `min(diagonal * 3, DEFAULT_CAMERA_FAR)` to ensure entire box is visible from any camera angle
- Handles both orthogonal and triclinic simulation boxes
- Updates automatically when simulation box changes or when particles/bonds are added

## Related

- Requires omovi update with `updateCameraPlanes` method

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `70b4fde0fda4`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.