# Issue

**Title:** Issue #269 - Catch All Exceptions in `DockableMenuItem.addNotify`

## Description

DockableMenuItem now catches all exceptions. Issue #272 will make this handling better in the 1.1 release.

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `061cb55f77d9`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.