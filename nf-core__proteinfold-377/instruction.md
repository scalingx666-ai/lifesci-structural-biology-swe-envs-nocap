# Issue

**Title:** fix sequence msa synch for af2 split

## Description

Joined samplesheet and feature channels on meta.id in AF2 split mode to ensure the order is consistent between channels.

 

## PR checklist

- [x] This comment contains a description of changes (with reason).
- [x] Make sure your code lints (`nf-core lint`).
- [x] `CHANGELOG.md` is updated.

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `6923c119130b`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.