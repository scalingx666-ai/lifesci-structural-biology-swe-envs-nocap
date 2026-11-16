# Issue

**Title:** Genericize solvation-artifact references in comments

## Description

Comment/docstring-only change: replaces references to a specific unreleased solvation artifact with generic wording (first-party solvation artifacts with embedded dispersion). One of the comments ships in the PyPI package; the wording also incorrectly implied the artifact is publicly shipped. No code or test behavior changes.

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `649ca7e84a1f`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.