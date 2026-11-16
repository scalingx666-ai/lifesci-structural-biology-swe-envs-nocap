# Issue

**Title:** Update Dockerfile

## Description

The failure in the docker build is due to jupyter notebook. I've changed the commands to use jupyter lab.

Building manylinux wheels still needs more work. Please don't merge this PR immediately.

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `f42b65dd82ff`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.