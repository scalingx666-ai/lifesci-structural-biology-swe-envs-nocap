# Issue

**Title:** refact: refactor merging iso using VF2

## Description

Fix #2165.

The previous implementation is not realiable (). The new implementation is realiable but a bit slower.

<!-- This is an auto-generated comment: release notes by coderabbit.ai -->
## Summary by CodeRabbit

- **New Features**
	- Added support for handling molecular isomer distinctions in the molecule naming and graph generation processes.

- **Refactor**
	- Removed the "Merge isomers" step from the process flow, simplifying the handling of molecular structures.

<!-- end of auto-generated comment: release notes by coderabbit.ai -->

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `37b0bef6fd9d`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.