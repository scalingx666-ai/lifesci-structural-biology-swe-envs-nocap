# Issue

**Title:** fix: fix Mo when O is also contained

## Description

Fix #2318.

<!-- This is an auto-generated comment: release notes by coderabbit.ai -->

## Summary by CodeRabbit

- **New Features**
	- Added a new test method to validate regular expression functionality for specific atom names

- **Bug Fixes**
	- Updated regular expression pattern to improve element wrapping conditions
	- Clarified docstring for `convertSMILES` method to provide better exception context

- **Tests**
	- Modified atom name handling in test cases from list to NumPy array
	- Expanded test coverage for regular expression matching

<!-- end of auto-generated comment: release notes by coderabbit.ai -->

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `2173d8714586`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.