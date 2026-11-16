# Issue

**Title:** fix: normalize fallback version

## Description

<!-- This is an auto-generated comment: release notes by coderabbit.ai -->

## Summary by CodeRabbit

* **Chores**
  * Updated the fallback version to “0.0.0” when build metadata isn’t available, replacing the previous “Unknown” label. This provides a clear, semantic version in apps, logs, and package info.
  * Improves consistency across environments by preventing ambiguous “Unknown” version displays. No functional changes to features; only the reported version string is affected when source control metadata cannot be detected.

<!-- end of auto-generated comment: release notes by coderabbit.ai -->

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `7f07781ccc93`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.