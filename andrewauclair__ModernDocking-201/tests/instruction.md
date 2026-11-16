# Issue

**Title:** Windows will now retain their previous size and location if maximized

## Description

. Windows will now return to their previous size and location if they were persisted maximized. Normally Java AWT/Swing windows don't retain a size and location. This would result requiring the user to manually adjust the size.

This is achieved by storing the previously persisted layout inside of Modern Docking and moving the location and size of each Window to the new layout if a Window is maximized (i.e. has no location and size in the new layout).

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `7c58856469b1`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.