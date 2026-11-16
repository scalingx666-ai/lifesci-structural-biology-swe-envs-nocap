# Issue

**Title:** feat: move settings button to main menu

## Description

Move the settings button from the fixed bottom-right position in View component to the bottom of the main menu sidebar in App component.

## Changes
- Added Settings menu item to App.tsx menu items array at the bottom
- Added showSettings state and Settings component rendering in App.tsx
- Removed settings button and related code from View.tsx

The settings button now appears in the main menu at the bottom, after the pause button, separated by a divider.

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `b38efd2c8297`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.