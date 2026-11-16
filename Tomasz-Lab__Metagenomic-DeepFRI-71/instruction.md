# Issue

**Title:** release: v1.1.2

## Description

### Added
- chunked loading of MMSeqs2 preselected targets - improves runtime

### Fixed
- C++17 lowered to C++14 for compatibility
- pyopal API v0.5 integrated
- removed `scipy` distance calculation with function
- replaced `biopython` with `biotite` for structure manipulation - better runtime and easier deploy
- tests fixed & added to CI/CD

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `566037c96226`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.