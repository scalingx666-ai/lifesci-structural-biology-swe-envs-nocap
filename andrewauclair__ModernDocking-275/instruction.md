# Issue

**Title:** Issue #268 - Load "persistentID" and "class-name" XML Attributes by Name Instead of Index

## Description

Persistent ID and class-name for tabs and simple panels are now loaded based on name, not index.

When a failed dockable fails to load as a dynamic dockable, the log message is severe and dockable is set to null to force a DockableNotFoundException.

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `865ddfe65f70`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.