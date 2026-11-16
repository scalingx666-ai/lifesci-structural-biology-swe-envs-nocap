# Issue

**Title:** Fix `filter_map_tabs`

## Description

`filter_map_tabs` sometimes deletes nodes when it shouldn't. This is a fix for that.

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `1a5036c6c762`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.