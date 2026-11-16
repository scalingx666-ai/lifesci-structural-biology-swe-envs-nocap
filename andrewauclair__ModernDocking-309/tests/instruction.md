# Issue

**Title:** Dispose of Frame if the Undock Operation Inside Dock Removes the Last Dockable

## Description

The two base `Docking.dock` methods will silently undock the dockable if it is already docked. This had the potential to leave an empty frame. This PR resolves the issue by disposing of the frame if it is empty.

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `cab57f93aa13`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.