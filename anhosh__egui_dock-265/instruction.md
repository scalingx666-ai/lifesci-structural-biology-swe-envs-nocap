# Issue

**Title:** feat: add on_rect_changed callback and example for dock state

## Description

### Summary
This PR introduces:
- `on_rect_changed` callback to `TabViewer` to allow users to track when the rect changes.
- An example demonstrating saving and loading the dock state.

### Changes
- Added `on_rect_changed` callback to `TabViewer`
- Implemented an example for persistent dock states

### Motivation
This feature is useful for handling layout changes and persisting user layouts.

### Testing
- Tested with the example provided.

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `053197815c5f`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.