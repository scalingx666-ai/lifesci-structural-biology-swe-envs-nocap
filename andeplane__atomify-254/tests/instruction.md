# Issue

**Title:** feat: Add separate lighting controls with localStorage persistence

## Description

## Changes

- Replace single brightness slider with separate ambient and point light intensity controls
- Add localStorage persistence for all render settings (ssao, lights, simulationBox)
- Ambient light intensity: 0-1.0 range (default: 0.05)
- Point light intensity: 0-50 range (default: 20.0)
- Settings load on app initialization and save on every change
- Apply light settings to visualizer on creation and updates

## Related Changes in omovi
- Improved SSAO quality settings (Ultra mode, increased AO radius)
- Updated point light positioning to follow camera-system center axis with 90° field of view constraint

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `c576eea4ce4d`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.