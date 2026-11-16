# Issue

**Title:** Fixes for #174, #175 and #176 for exception improvements.

## Description

- `DockingLayoutException` now specifies the file and state (load or save) that failed.

 
- `DockableNotFoundException` now provides `getPersistentID`
- `DockableRegistrationFailureException` now provides `getPersistentID`
- `DockingLayoutException` now provides `getFile` and `getFailureType`
- `NotDockedException` now provides `getDockable`

 
- `RootDockingPanelRegistrationFailureException` has been added and thrown instead of `DockableRegistrationFailureException` in `Docking.registerDockingPanel`.
- `RootDockingPanelNotFoundException` has been added and thrown instead of `DockableRegistrationFailureException` in `Docking.configurePinning` and `Docking.dock`.

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `090f1cdf3278`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.