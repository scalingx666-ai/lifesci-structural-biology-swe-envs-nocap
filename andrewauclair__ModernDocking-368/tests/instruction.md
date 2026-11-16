# Issue

**Title:** Fix NPE in editor example

## Description

Signed commits.

Fix a `NullPointerException` that occurred in `DockableToolbar` when attempting to retrieve the `Button.margin` from the UIManager.

A `mainFrame.setDefaultCloseOperation(JFrame.EXIT_ON_CLOSE)` is also added in `EditorExample.java` to shutdown the process on frame closing

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `a1de3795084c`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.