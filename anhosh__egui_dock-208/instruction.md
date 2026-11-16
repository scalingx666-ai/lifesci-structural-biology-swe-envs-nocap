# Issue

**Title:** Fix crash after calling `DockState::remove_tab`.

## Description

Deleting the last tab from a window surface using `DockState::remove_tab` doesn't delete the surface, which causes applications to crash on the following frame where `DockArea` attempts to render an empty window.

Solution: remove the window surface if its `Tree` is empty.

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `c3604425943d`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.