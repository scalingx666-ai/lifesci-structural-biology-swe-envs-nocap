# Issue

**Title:** Fix Linux Flicker Issue While Docking, Dragging Single Dockable from Frame, Removing Print Statement, and Fixing Overlay North Size

## Description

This PR addresses four issues:

1. The GUI no longer flickers on Linux while dragging dockables
2. Dragging a single dockable out of a frame (where the frame only contains that one dockable) wasn't dragging properly
3. Removed a print statement left in from previous debugging
4. The overlay drawing for the north of a dockable was half the height it should be

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `a24d579602ee`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.