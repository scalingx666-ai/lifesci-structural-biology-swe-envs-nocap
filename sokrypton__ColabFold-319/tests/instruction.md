# Issue

**Title:** turn on template search for a3m input files

## Description

Currently, the template search is not working if the input file format is a3m even though `--templates` arg was added. This PR fixes the issue.

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `cc434cd7e93d`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.