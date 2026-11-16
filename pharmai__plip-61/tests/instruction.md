# Issue

**Title:** Use setuptools.find_packages()

## Description

Apparently `packages` needs a list with all the sub-modules. setuptools.find_packages() seems to find them properly and for me .

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `b3de9ea6b487`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.