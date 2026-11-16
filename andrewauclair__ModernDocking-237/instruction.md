# Issue

**Title:** The property changes for 0.12 caused the properties not save and reload.

## Description

The new property changes weren't loading old files and weren't reloading new files properly. The name of the property is also now stored in the layout file.

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `366c69dc9f68`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.