# Issue

**Title:** chore: bump pyright to 1.1.363

## Description

<!-- This is an auto-generated comment: release notes by coderabbit.ai -->
## Summary by CodeRabbit

- **Chores**
  - Updated Pyright version in workflow from `1.1.308` to `1.1.363`.

- **Refactor**
  - Enhanced code readability and maintainability by adding type annotations to internal methods in `_detect.py`.
  - Improved clarity in data handling by adding type hints in the table printing function in `_matrix.py`.

- **Bug Fixes**
  - Ensured proper handling of molecule creation and manipulation without type annotations in the `convertSMILES` method of the `Path` class in `_path.py`.

<!-- end of auto-generated comment: release notes by coderabbit.ai -->

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `311db7086533`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.