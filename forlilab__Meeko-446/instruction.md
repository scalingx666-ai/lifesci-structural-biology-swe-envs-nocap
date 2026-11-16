# Issue

**Title:** Template charges fix

## Description

The rxns for templates NME and ACE are not present in the template, so their charges had not been properly calculated. This PR fixes that.

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `30e1540c6070`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.