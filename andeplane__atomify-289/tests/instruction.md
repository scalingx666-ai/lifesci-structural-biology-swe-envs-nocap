# Issue

**Title:** fix: restore simulation progress bar visibility and width

## Description

## Overview
Fixes the missing simulation progress bar that shows run command progress. The progress bar was present in the code but not visible due to CSS layering issues, and was incorrectly sized.

## Changes

### Progress Bar Visibility
- Added `zIndex: 100` to Header component to ensure it renders above the canvas
- Progress bar was being hidden behind the canvas due to missing z-index

### Progress Bar Width
- Fixed Progress component `size` prop from `size={8}` to `size={["100%", 8]}`
- The previous format was constraining the progress bar to 8x8 pixels
- New format uses antd v5 tuple syntax: [width, height] to set full width with 8px height

## Benefits
- ✅ Progress bar is now visible during simulation runs
- ✅ Progress bar matches the width of the simulation title
- ✅ Properly displays simulation progress (run X command completion)

## Testing
- ✅ Verified progress bar appears when simulation is running
- ✅ Confirmed progress bar spans full width matching title
- ✅ Progress updates correctly as simulation progresses

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `ee62d13e7c4f`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.