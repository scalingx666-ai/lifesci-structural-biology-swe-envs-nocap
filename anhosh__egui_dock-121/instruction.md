# Issue

**Title:** add id() method to TabViewer trait

## Description

This PR is meant to ensure that each tab has its own egui::Id and that it is preserved when moving the tab around in the DockArea. This is really important to make sure egui memory is carried when the tab is moved. For instance, a `egui::Plot` zoom will have a different zoom saved for each possible tab location.

By default, the tab title is used as a source of unique id but the user can define a custom behavior with the new `TabViewer::id()` method.

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `d5a668313806`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.