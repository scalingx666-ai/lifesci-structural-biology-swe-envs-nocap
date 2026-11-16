# Issue

**Title:** fix windows build

## Description

fix #29

move script to "console_scripts" entry point in order to support both
linux and macos

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `abff0515557c`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.