# Issue

**Title:** build(conda): update conda file

## Description

<!-- This is an auto-generated comment: release notes by coderabbit.ai -->

## Summary by CodeRabbit

- **New Features**
	- Updated build requirements to include `cmake >=3.26` and `make` for Unix systems.
- **Refactor**
	- Switched to `scikit-build-core >=0.9.0` for host requirements.
	- Simplified Python requirement to `python` in runtime dependencies.
	- Replaced `matplotlib` with `matplotlib-base` in runtime dependencies for efficiency.

<!-- end of auto-generated comment: release notes by coderabbit.ai -->

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `c2f435aa940b`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.