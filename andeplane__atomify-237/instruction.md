# Issue

**Title:** feat: Add touch support for mobile atom selection

## Description

## Summary
Updates atomify to use omovi 0.15.0 which adds touch event support for atom selection on mobile devices.

## Changes
- Updated `omovi` dependency from `^0.14.0` to `^0.15.0`
- Updated `package-lock.json` to reflect the new dependency

## Mobile Behavior
On mobile devices, users can now tap atoms to toggle their selection:
- Single tap on an atom adds it to selection (if not selected) or removes it (if already selected)
- This allows building multi-atom selections by tapping multiple atoms
- Drag detection prevents accidental selection during camera rotation

## Related PRs
- omovi PR #20:

## Testing
- Verified omovi 0.15.0 is installed from npm registry
- Package-lock.json updated correctly

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `aae9e2b4d50d`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.