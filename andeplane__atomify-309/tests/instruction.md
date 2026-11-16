# Issue

**Title:** fix: make Show Simulation Box checkbox toggleable

## Description

## Summary

- The `useEffect` in `View.tsx` that synced `renderSettings.showSimulationBox` with `embedConfig.showSimulationBox` lacked an `isEmbeddedMode` guard
- Since `embedConfig.showSimulationBox` defaults to `true`, any user toggle of the checkbox was immediately overwritten back to `true`, making it appear permanently enabled and unclickable
- Fix: added `isEmbeddedMode &&` condition so the sync only runs when actually in embedded mode

## Behavior after fix

- **Non-embedded mode**: checkbox is freely toggleable as expected
- **Embedded mode**: `embedConfig.showSimulationBox` (from URL params) continues to override the setting, preserving existing behavior

## Test plan

- [ ] Open the app in normal (non-embedded) mode → verify the "Show simulation box" checkbox in Settings can be checked/unchecked
- [ ] Open the app in embedded mode with `showSimulationBox=false` in the URL config → verify the box is hidden and the setting is locked to `false`
- [ ] Open the app in embedded mode with no explicit `showSimulationBox` config (defaults to `true`) → verify the box is shown
- [ ] `npm run build` passes with no errors ✅

🤖 Generated with [Claude Code](https://claude.com/claude-code)

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `9dd77515dc04`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.