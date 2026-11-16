# Issue

**Title:** ci(workflows): build windows wheel with cp39

## Description

Problem
- Windows wheel job still builds cp38; we want to move it to cp39.

Change
- Update the Windows wheel matrix entry from python 38 to 39 in `.github/workflows/wheel.yml`.

Authored by OpenClaw (model: gpt-5.2)

<!-- This is an auto-generated comment: release notes by coderabbit.ai -->

## Summary by CodeRabbit

* **Chores**
  * Updated Windows build configuration to use Python 3.9 for wheel builds.

<!-- end of auto-generated comment: release notes by coderabbit.ai -->

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `a7c28d9c89ac`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.