# Issue

**Title:** fix: validate downloaded files

## Description

.

Make each download attempt verify the HTTP response before writing and validate the downloaded bytes against the configured SHA256 before accepting them. Failed or partial payloads are removed so fallback URLs can be tried safely.

Also avoids decoding arbitrary rejected payloads merely to log a checksum mismatch.

Tests: `python -m pytest -q tests/test_utils.py` (3 passed)

Checks: `ruff check reacnetgenerator/utils.py tests/test_utils.py`; `ruff format --check reacnetgenerator/utils.py tests/test_utils.py`; `git diff --check`

Coding agent: Codex
Codex version: codex-cli 0.149.0
Model: gpt-5.6-sol
Reasoning effort: xhigh

<!-- This is an auto-generated comment: release notes by coderabbit.ai -->

## Summary by CodeRabbit

* **Bug Fixes**
  * Improved file download reliability by retrying alternate sources after connection errors, interrupted downloads, or checksum mismatches.
  * Removed incomplete or invalid files automatically after failed downloads.
  * Reduced sensitive output in checksum warning messages.

* **Tests**
  * Added coverage for download retries, interrupted transfers, checksum validation, and cleanup of rejected files.

<!-- end of auto-generated comment: release notes by coderabbit.ai -->

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `b87c8ebe129e`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.