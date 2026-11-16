# Issue

**Title:** Add a .gitignore file

## Description

Adds a simple gitignore file with a few exclusions for auto-generated files and script download folders listed in the Readme.
This improves the development workflow for contributors and prevents accidentally checking in large folders into a branch.

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `84659c93ba6f`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.