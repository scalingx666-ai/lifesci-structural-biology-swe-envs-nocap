# Issue

**Title:** build: replace openbabel-wheel with openbabel

## Description

Problem
- `openbabel-wheel` has been superseded by the official `openbabel` package.
- Starting with Open Babel 3.2.0, users can install the Python wheels directly from `openbabel` on PyPI.

Change
- Replace the `openbabel-wheel` dependency with `openbabel>=3.2.0`.

Notes
- This keeps the same Python import path (`openbabel`) while depending on the upstream package name.

Authored by OpenClaw (model: custom-chat-jinzhezeng-group/gpt-5.5)

<!-- This is an auto-generated comment: release notes by coderabbit.ai -->
## Summary by CodeRabbit

* **Chores**
  * Updated runtime dependency to require OpenBabel >= 3.2.0 (replacing prior wheel packaging). This streamlines packaging, reduces packaging-specific issues, and ensures the application runs with a newer OpenBabel release for improved compatibility, stability, and access to updated features. No other project metadata or runtime tooling settings were changed.

<!-- review_stack_entry_start -->

[![Review Change Stack](https://storage.googleapis.com/coderabbit_public_assets/review-stack-in-coderabbit-ui.svg)](https://app.coderabbit.ai/change-stack/deepmodeling/reacnetgenerator/pull/2438?utm_source=github_walkthrough&utm_medium=github&utm_campaign=change_stack)

<!-- review_stack_entry_end -->
<!-- end of auto-generated comment: release notes by coderabbit.ai -->

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `9d627f4ea04f`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.