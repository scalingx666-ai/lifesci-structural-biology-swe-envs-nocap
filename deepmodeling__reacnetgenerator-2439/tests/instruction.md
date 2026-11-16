# Issue

**Title:** ci: drop Python 3.9 support

## Description

Problem
- The project still advertised Python 3.7-3.9 support and built wheels for older CPython versions.

Change
- Raise `requires-python` and docs to Python 3.10+.
- Remove Python 3.7-3.9 classifiers and tox targets.
- Update cibuildwheel limited API and wheel matrix to start from CPython 3.10.

Notes
- Verified with `git diff --check` and `uvx --from build python -m build --sdist --installer uv`.

Authored by OpenClaw (model: custom-chat-jinzhezeng-group/gpt-5.5)

<!-- This is an auto-generated comment: release notes by coderabbit.ai -->

## Summary by CodeRabbit

* **Chores**
  * Updated minimum Python version requirement from 3.7+ to 3.10+
  * Updated build configuration and CI workflows to support Python 3.10 through 3.13
  * Modernized codebase with current type annotation standards

<!-- review_stack_entry_start -->

[![Review Change Stack](https://storage.googleapis.com/coderabbit_public_assets/review-stack-in-coderabbit-ui.svg)](https://app.coderabbit.ai/change-stack/deepmodeling/reacnetgenerator/pull/2439?utm_source=github_walkthrough&utm_medium=github&utm_campaign=change_stack)

<!-- review_stack_entry_end -->

<!-- end of auto-generated comment: release notes by coderabbit.ai -->

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `520aa7a8bbf7`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.