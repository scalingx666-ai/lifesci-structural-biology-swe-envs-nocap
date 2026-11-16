# Issue

**Title:** Rename 'polymer:' column in pandas representation to 'polymer'

## Description

The `mmtfStructure.to_pandas` method created a column called "polymer:". This is difficult to work with in pandas without special escaping and looks like a typo. This PR renames it without the colon.

Note that this will break existing code that references the column by the old name.

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `3d444178bdc0`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.