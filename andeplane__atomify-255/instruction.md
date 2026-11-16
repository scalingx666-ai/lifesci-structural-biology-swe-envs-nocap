# Issue

**Title:** fix: update to omovi 0.18.0 and fix SelectedAtomsInfo visibility

## Description

## Summary

Updates omovi dependency to 0.18.0 from npm and fixes a CSS positioning bug that prevented the SelectedAtomsInfo component from displaying when particles were clicked.

## Changes

- Updated `package.json` to use `omovi@^0.18.0` from npm instead of local file reference
- Fixed CSS positioning issue: removed duplicate `position: relative` that was overriding `position: absolute` in `.selected-atoms-info`
- Added `position: relative` to parent div in View.tsx to enable proper absolute positioning
- Cleaned up debug logging

## Testing

- Verified that SelectedAtomsInfo component now displays correctly when particles are clicked
- Confirmed particle selection and visual highlighting still works
- Tested with 1, 2, and 3+ selected particles

## Related

Fixes issue where SelectedAtomsInfo component was rendering but not visible after updating to omovi 0.18.0.

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `0689c97c38b1`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.