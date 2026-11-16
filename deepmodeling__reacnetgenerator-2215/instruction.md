# Issue

**Title:** build: enable Python limited API

## Description

. .

<!-- This is an auto-generated comment: release notes by coderabbit.ai -->
## Summary by CodeRabbit

- **New Features**
  - Added support for Python 3.9 on macOS and Windows platforms.
  - Introduced new build configurations for better integration and compatibility.

- **Bug Fixes**
  - Removed unsupported Python 3.8 configurations for certain platforms to ensure compatibility.

- **Refactor**
  - Updated minimum required CMake version to improve build stability and performance.
  - Streamlined Python API settings in build configurations for enhanced functionality.

- **Documentation**
  - Updated build and wheel repair commands in documentation to reflect current support and configurations.
<!-- end of auto-generated comment: release notes by coderabbit.ai -->

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `b3a94952e767`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.