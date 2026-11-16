# Issue

**Title:** ci(wheel): enable linux aarch64 wheel

## Description

<!-- This is an auto-generated comment: release notes by coderabbit.ai -->
## Summary by CodeRabbit

- **Chores**
	- Enhanced the build process to automatically select the appropriate runner for ARM64 builds, ensuring compatibility and efficiency in software deployment.
- **Refactor**
	- Added conditions to skip tests for Python 3.7 on the manylinux_aarch64 platform and updated the package installation command based on platform conditions.

<!-- end of auto-generated comment: release notes by coderabbit.ai -->

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `101610b9be90`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.