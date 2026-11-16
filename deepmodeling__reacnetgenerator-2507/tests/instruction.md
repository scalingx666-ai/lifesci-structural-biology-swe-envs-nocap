# Issue

**Title:** fix: describe disabled HMM processing

## Description

## Summary

.

When `--nohmm` is enabled, the HMM stage now reports `Pass through original signals (HMM disabled)` in both the multiprocessing progress bar and the completed-step log. HMM-enabled runs retain the `HMM filter` label. Added regression coverage for both modes and the no-HMM step log.

## Validation

- `python -m compileall -q reacnetgenerator tests/test_reacnetgen.py`
- `git diff --check`
- Focused regression tests: 3 passed in the local isolated environment.

<!-- This is an auto-generated comment: release notes by coderabbit.ai -->

## Summary by CodeRabbit

* **Updates**
  * Progress and completion messages now accurately describe whether HMM filtering is active. When disabled, they indicate that the original signals are passed through unchanged.

<!-- end of auto-generated comment: release notes by coderabbit.ai -->

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `bf31e134ff1e`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.