# Issue

**Title:** Issue #244 - Request Close of Dockable.

## Description

Adding a `requestClose` callback option to the `Dockable` interface. This method allows an application to confirm that the dockable can be closed. This can be seen in use in the single application demo, `ToolPanel.java` where the user is asked Yes/No when closing the tool panels.

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `5bee23a970dc`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.