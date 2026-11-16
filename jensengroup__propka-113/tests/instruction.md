# Issue

**Title:** propka3 --version prints version

## Description

As far as I can tell, the old `--version` argument and the `version_label` option were unused ever since this repo was set up in 2012. This patch changes the `--version` argument to simply print the program version and exit.

Closes

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `3937cb14671a`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.