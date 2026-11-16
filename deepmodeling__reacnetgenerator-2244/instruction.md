# Issue

**Title:** ci(wheel): use build[uv] frontend

## Description

<!-- This is an auto-generated comment: release notes by coderabbit.ai -->
## Summary by CodeRabbit

- **Chores**
  - Updated the build process to include `uv` as a frontend.
  - Modified the `.gitignore` file to remove obsolete entries and add new relevant ones.

- **Refactor**
  - Removed the `before-test` configuration from `pyproject.toml` to streamline the testing setup.
<!-- end of auto-generated comment: release notes by coderabbit.ai -->

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `b102fc1ca2c4`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.