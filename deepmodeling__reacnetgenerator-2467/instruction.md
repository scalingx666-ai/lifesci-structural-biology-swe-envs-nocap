# Issue

**Title:** fix: parse extxyz lattice per frame

## Description

.

Parse `Lattice=` from every extxyz frame comment before bond perception, rather than reusing the first frame cell for the whole trajectory. A shared parser keeps first-frame discovery and per-frame handling consistent and reports malformed lattice metadata clearly.

The regression test sends two frames with distinct cells through `_readstepfunc()` and verifies each cell reaches coordinate bond detection.

Tests: `python -m pytest -q tests/test_detect.py` (18 passed)

Checks: `ruff check reacnetgenerator/_detect.py tests/test_detect.py`; `ruff format --check reacnetgenerator/_detect.py tests/test_detect.py`; `git diff --check`

Coding agent: Codex
Codex version: codex-cli 0.149.0
Model: gpt-5.6-sol
Reasoning effort: xhigh

<!-- This is an auto-generated comment: release notes by coderabbit.ai -->
## Summary by CodeRabbit

* **Bug Fixes**
  * Corrected periodic cell handling for extended XYZ files with varying lattice dimensions across frames.
  * Each frame now uses its own lattice data, improving bond and molecule detection accuracy.

* **Tests**
  * Added coverage to verify that changing lattice sizes are correctly applied on a frame-by-frame basis.
<!-- end of auto-generated comment: release notes by coderabbit.ai -->

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `56298871a0ec`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.