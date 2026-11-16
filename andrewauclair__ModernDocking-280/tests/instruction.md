# Issue

**Title:** Fix Issues with Overridden Methods That Should Have Been Deprecated

## Description

`DefaultDockingPanel.isLimitedToRoot` and `DefaultDockingPanel.setLimitedToRoot` should have been deprecated and now are. The new, missing, versions have also been added: `DefaultDockingPanel.isLimitedToWindow` and `DefaultDockingPanel.setLimitedToWindow`.

The single-app version of `Docking` contained a missing deprecation. `Docking.configurePinning` should have been deprecated and now is. `Docking.configureAutoHide` has been added to replace it and call the `DockingAPI.configureAutoHide` method.

`DockingAPI.autoHideAllowed` has been deprecated in favor of a properly named method `DockingAPI.isAutoHideAllowed`. These have both been added to the single-app `Docking` class. `Docking.autoHideAllowed` has been properly marked as deprecated.

These changes will be released in 0.12.1 and 1.0.1 and the deprecated functions will be removed in the 1.1 release.

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `aa2ca02b00a0`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.