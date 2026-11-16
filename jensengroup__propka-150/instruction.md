# Issue

**Title:** Update CI and docs for Python up to py311

## Description

## Summary of changes

- Update CI to add py310 and py311
- Added cron entry for CI
- Added classifiers for new python versions
- Removed universal wheels (propka doesn't support py2.x anymore)

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `8acfb4fe1bdf`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.