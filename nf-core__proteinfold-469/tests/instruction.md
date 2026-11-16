# Issue

**Title:** HTML reports -> /reports not /generate

## Description

Reports were ending up in `--outdir` /generate purely because default fallback is it truncates the `GENERATE_REPORT` process name.

Small `publishDir` pattern for the process in general `modules.config` to help user find the reports they are there for faster.

## PR checklist
- [X] This comment contains a description of changes (with reason).
- [X] Make sure your code lints (`nf-core lint`).
- [X] `CHANGELOG.md` is updated.

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `bde31a88538b`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.