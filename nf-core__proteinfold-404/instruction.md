# Issue

**Title:** Boltz cache files moved to workdir and fixed version check

## Description

Fix for error caused by Boltz cache files stored in `/tmp/`, which caused permission issues on shared HPC systems where the first user to run the pipeline would own `/tmp/.triton/`, preventing subsequent users from running.

- Cache directory moved from `/tmp/` to process workdir `./home`
- Dynamic version detection from pip instead of hardcoding ensures more accurate version tracking
- Fixes Boltz version output #403
- Fixed version checks for colabfold modules
- Fixed the Boltz stub

## PR checklist

- [x] This comment contains a description of changes (with reason).
- [x] Make sure your code lints (`nf-core lint`).
- [x] `CHANGELOG.md` is updated.

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `5b68ae49395f`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.