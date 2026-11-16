# Issue

**Title:** Drop support for Python 3.10

## Description

Python 3.10 has reached end of life, so this sets the minimum supported version to 3.11.

- `pyproject.toml`: `requires-python = ">=3.11"`, remove the 3.10 classifier
- CI: remove 3.10 from the `build` and `minimal__install` matrices, and run `code-style` on 3.11
- `tests/utils/test_dependencies.py`: remove the `tomli` fallback, since `tomllib` is in the stdlib from 3.11
- `uv.lock`: regenerated, which removes the 3.10-only resolution forks. No version bumps for 3.11+
- CHANGELOG: add an entry

🤖 Generated with [Claude Code](https://claude.com/claude-code)

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `f8c4fe9ac812`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.