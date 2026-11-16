# Issue

**Title:** Floating rework

## Description

Reworked floating to work with panels instead of dockables directly. There is still a good bit to cleanup here, but I'd like to merge this and make a new snapshot build.

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `ef2050d87e21`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.