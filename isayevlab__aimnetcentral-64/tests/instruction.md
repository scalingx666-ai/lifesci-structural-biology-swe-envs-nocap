# Issue

**Title:** refactor: rename has_d3ts local vars to has_embedded_d3ts

## Description

## Summary

Wave 3 of post-audit follow-ups — F6 only (per your decision to leave the `aimnet/train/utils.py` vestigial-code items alone).

Two local variables inside `load_v1_model` (`aimnet/models/utils.py:659,668`) shadowed the module-level `has_d3ts(model: nn.Module)` function. The locals examine the YAML config dict (different semantic surface than the function, which inspects an `nn.Module`), so renaming to `has_embedded_d3ts` makes the intent clearer and removes the shadow. No behavior change.

## Test plan

- [x] `make check` (ruff, deptry) — green
- [x] `pytest -k 'convert or export or load_model'` — 3 passed, 1 skipped (no regression)
- [ ] CI: full Main matrix

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `b67e242afb00`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.