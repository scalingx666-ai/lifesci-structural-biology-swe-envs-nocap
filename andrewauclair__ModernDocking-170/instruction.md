# Issue

**Title:** Experimental change to properly track the type of a docking property.

## Description

There are still some tasks to complete. This new version does not save/load properties to xml files property and can no longer read old files (which it should be able to do).

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `3fa9a8c118ba`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.