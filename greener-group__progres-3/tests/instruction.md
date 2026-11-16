# Issue

**Title:** allow progres to save its dbs to a custom location

## Description

saving inside the installation dir of the program doesn't work in all contexts, e.g. in shared HPC environments when the software is set up centrally

It also helps for containerization to have the location separate.

This pull request should be fully backward compatible, it would only change the behavior when the user sets the env var PROGRES_DATA_DIR.

Hopefully contribs are welcome!

Cheers

J

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `8ad81113885e`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.