# Issue

**Title:** Issue #397 - Improved Location Restoration with Windows 11 Snap Layout

## Description

When restoring layouts with size and location information for frames, the center location of the frame is now checked against the available screen devices, not the top left location. This allows us to better handle cases where the top left is not on the screen, such as with Windows 11 snap layouts. Additionally, when the location is not on an existing screen device, the frame is now centered on the first device instead of in the top left corner (at 0, 0).

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `b3c05070f33f`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.