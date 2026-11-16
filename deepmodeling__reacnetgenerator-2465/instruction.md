# Issue

**Title:** fix: preserve full cell matrices

## Description

.

Normalize `cell` inputs according to their NumPy shape so:

- `(3, 3)` matrices are preserved, including triclinic off-diagonal components
- `(3,)` vectors are diagonalized
- flat `(9,)` inputs are reshaped to matrices

Adds regression coverage for all three documented forms.

Test: `python -m pytest -q tests/test_reacnetgen.py -k cell_normalization_preserves_supported_shapes` (3 passed)

Coding agent: Codex
Codex version: codex-cli 0.149.0
Model: gpt-5.6-sol
Reasoning effort: xhigh

<!-- This is an auto-generated comment: release notes by coderabbit.ai -->

## Summary by CodeRabbit

* **Bug Fixes**
  * Improved validation and normalization of cell inputs.
  * Preserved 3×3 cell matrices and correctly converted flattened nine-value and three-value inputs.
  * Added clearer errors for unsupported cell formats.

* **Tests**
  * Added coverage for supported cell input shapes and conversions.

<!-- end of auto-generated comment: release notes by coderabbit.ai -->

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `b87c8ebe129e`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.