# Issue

**Title:** Undoing changes from #294, allowing unclosable dockables to float and dock in any frame

## Description

Dockables that return false from `isClosable()` are currently treated as if they return `true` from `isLimitedToWindow()`. Except this isn't entirely consistent. The checks ignore floating in a separate frame. This means that a dockable can be floated into a new window, and then not docked into any other window after. These changes return to just checking `isLimitedToWindow()` when the dockable changes windows.

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `92d86e10e7d7`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.