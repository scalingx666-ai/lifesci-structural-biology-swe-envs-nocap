# Issue

**Title:** travis: Refactor and test conditionals

## Description

This includes a more native approach to dependency management (the `apt` section) and a configuration which allows for non-GAP versions of QUIP to be tested correctly. Essentially this adds a dummy variable to conditionally execute the GAP cloning step and also outright skips building the GAP env matrices. An outgrowth of the discussion over at 

The configuration and build setup for PRs is the same as the current settings for the fork, and can be viewed here: https://travis-ci.com/github/HaoZeke/QUIP

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `ccc01b7cdf1e`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.