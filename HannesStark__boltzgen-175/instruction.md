# Issue

**Title:** feat: Add gemmi 0.6.x/0.7.x version compatibility

## Description

## Summary
- Adds compatibility layer for gemmi 0.6.x and 0.7.x versions
-  by loosening version constraint from `gemmi==0.6.5` to `gemmi>=0.6.5`

## Changes
- `src/boltzgen/data/write/mmcif.py`: Added `_create_gemmi_model()` helper function
- `pyproject.toml`: Updated gemmi dependency to `>=0.6.5`

## Breaking Change Addressed
In gemmi 0.7.0, the `Model` constructor changed from `Model(str)` to `Model(int)`. The helper function tries the new API first and falls back to the old API.

## Testing
- Tested with gemmi 0.6.5 in Docker container
- Full 6-step pipeline passes: design → inverse_folding → folding → design_folding → analysis → filtering

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `617e549edf70`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.