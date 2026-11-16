# Issue

**Title:** fix: update navbar for Bootstrap 5

## Description

.

Update the generated report navbar to match bundled Bootstrap 5.3:

- use `data-bs-toggle` and `data-bs-target` for collapse behavior
- replace `ml-auto` with `ms-auto`
- remove the obsolete `navbar-toggler-right` class

Adds a template regression test that rejects the Bootstrap 4 attributes and spacing class.

Tests: `yarn test` (5 passing)

Checks: `yarn dlx prettier@3.6.2 --check template.html`; `yarn dlx eslint@8.57.1 test/test_template.js`; `git diff --check`

Coding agent: Codex
Codex version: codex-cli 0.149.0
Model: gpt-5.6-sol
Reasoning effort: xhigh

<!-- This is an auto-generated comment: release notes by coderabbit.ai -->

## Summary by CodeRabbit

* **Bug Fixes**
  * Updated navigation controls for Bootstrap 5 compatibility.
  * Corrected navbar collapse behavior and spacing alignment.

* **Tests**
  * Added automated checks to verify the updated navigation attributes and classes.

<!-- end of auto-generated comment: release notes by coderabbit.ai -->

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `b87c8ebe129e`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.