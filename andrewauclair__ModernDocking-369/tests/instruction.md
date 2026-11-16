# Issue

**Title:** Auto-hide problem with unsupported locations

## Description

When a `Dockable` is unpinned, the previous logic search for the nearest side to assign the dockable.
The problem is that a `Dockable` can be assigned to a not supported `ToolbarLocation`, because there was no check on the supported regions.
I noticed that behavior in my application, where the south location was disabled, but the `Dockable`s near the bottom of the `JFrame`  were assigned to the south region, disappearing from the docking.

I introduced a check with the  `RootDockingPanelAPI.isLocationSupported` method to ensure that the nearest region is actually available.

I tried to solve the similar problem with the handles, displaying only those related to the supported `ToolbarLocation`, so that a `Dockable` cannot be drop onto an unavailable `ToolbarLocation`.

I hope this can be useful

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `215ec83f4654`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.