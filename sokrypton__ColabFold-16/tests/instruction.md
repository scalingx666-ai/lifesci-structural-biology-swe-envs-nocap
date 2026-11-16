# Issue

**Title:** add small speed up in dependency installation

## Description

This commit uses the `curl URL | tar` method of downloading and untarring. This is faster (tested) than downloading the full file with wget and then untarring. This commit also installs all of the `pip` dependencies on one line, which should also makes the installation faster.

When I tested on colab, this commit took 1m12s to install dependencies and original took 3m12s.

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `db9c944bffe4`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.