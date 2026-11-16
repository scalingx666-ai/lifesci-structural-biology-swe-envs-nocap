# Issue

**Title:** write LINK(R) records even when atom names missing

## Description

LINKR records with a link id of "gap" do not have atom names, but should be kept.

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `3741eeccf34d`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.