# Issue

**Title:** Issue #196

## Description

Dynamic dockables in tab groups now reload properly. This required storing the class-name for the selected tab and all tabs in the group pane. This allows Modern Docking to properly reload. There were also some code changes required to detect when a dockable has failed to load, and to check if it is a dynamic dockable (by attempting to create an instance of the class).

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `579f568f06ef`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.