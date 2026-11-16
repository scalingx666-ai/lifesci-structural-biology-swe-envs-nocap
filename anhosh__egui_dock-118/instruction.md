# Issue

**Title:** Lvaroqui/avoid generating empty leaf

## Description

This PR fixes a bug in the release-0.5 branch that was introduced in commit a90677f70ad30f78993682ec1ac2ebfdeaac1c23 where we could split a single tab into itself, causing an empty node to be displayed.

Also enables CI for releases branch and fixes several CI errors.

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `553a2bd1861e`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.