# Issue

**Title:** Add the Ability to Disable the Active Dockable Highlighter

## Description

. The ActiveDockableHighlighter can now be disabled by calling `Settings.setActiveHighlighterEnabled(false);` before calling `Docking.initialize`.

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `928cb0ea216c`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.