# Issue

**Title:** fix: use rdkit API to remove implicit hydrogens

## Description

<!-- This is an auto-generated comment: release notes by coderabbit.ai -->

## Summary by CodeRabbit

- **New Features**
	- Enhanced SMILES conversion process with improved implicit hydrogen handling for atoms.

- **Bug Fixes**
	- Removed outdated method that previously handled SMILES conversion, streamlining the conversion process.

- **Tests**
	- Removed a test related to the now-removed SMILES handling method, reflecting updates in testing strategy.

- **Chores**
	- Minor formatting adjustments and removal of unused imports for cleaner code.

<!-- end of auto-generated comment: release notes by coderabbit.ai -->

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `8289d2cf6961`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.