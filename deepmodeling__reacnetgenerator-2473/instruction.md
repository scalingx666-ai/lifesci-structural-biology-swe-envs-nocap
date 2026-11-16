# Issue

**Title:** fix: replace stale select handlers

## Description

.

Bind the three report filter selects through a namespaced helper that removes the prior ReacNetGenerator callback before installing the callback for the current time slice. Other components’ change handlers remain untouched.

The regression test rebinds a live selection twice and verifies exactly one invocation using the current time-slice closure.

Tests: `yarn test` (4 passing)

Checks: `yarn dlx eslint@8.57.1 events.js reacnetgen.js test/test_events.js`; `yarn start` (webpack production build succeeds); `git diff --check`

Coding agent: Codex
Codex version: codex-cli 0.149.0
Model: gpt-5.6-sol
Reasoning effort: xhigh

<!-- This is an auto-generated comment: release notes by coderabbit.ai -->

## Summary by CodeRabbit

* **Bug Fixes**
  * Improved selector change handling to prevent outdated callbacks from running.
  * Ensured only the most recently registered change handler responds to updates.
* **Tests**
  * Added coverage verifying that replaced handlers do not execute when a selector changes.

<!-- end of auto-generated comment: release notes by coderabbit.ai -->

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `2c48f9e19bd3`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.