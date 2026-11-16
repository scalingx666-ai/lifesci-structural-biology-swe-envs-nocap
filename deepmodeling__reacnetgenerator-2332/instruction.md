# Issue

**Title:** CI: switch linux_aarch64 to GitHub hosted runners

## Description

See https://github.blog/changelog/2025-01-16-linux-arm64-hosted-runners-now-available-for-free-in-public-repositories-public-preview/

<!-- This is an auto-generated comment: release notes by coderabbit.ai -->

## Summary by CodeRabbit

- **Chores**
	- Updated GitHub Actions workflow for wheel building
	- Simplified ARM64 build configuration
	- Removed conditional runner selection logic
	- Updated build matrix for ARM64 platform

<!-- end of auto-generated comment: release notes by coderabbit.ai -->

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `3432fe37a469`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.