# Issue

**Title:** Fix PDB v3.3 atomic charge parsing and formatting

## Description

## Summary

 — PDB v3.3 atomic charges now parse correctly from signed notation (`2+`, `1-`) into integer values and write back spec-compliant notation.

## Changes

- **`biopandas/pdb/engines.py`**: Added `_parse_charge` and `_format_charge` helpers to handle signed integer notation; updated `pdb_atomdict` and `pdb_anisoudict` charge specs to use these functions.
- **`biopandas/pdb/pandas_pdb.py`**: Modified parsing loop to apply callable type converters via `.apply()` instead of `.astype()`.
- **Test data**: Added `tests/pdb/data/charged_atoms.pdb` with ATOM and ANISOU entries carrying charges.
- **Tests**: Added `test_charge_parsing` (read test) and `test_charge_roundtrip` (write test) to verify both read path and write formatting.

## Testing

Verified with PDB `2mjz` (1050 charged atoms):
- Read: 1050 non-NaN charges (was all NaN before)
- Write: All produce correct notation (`1+`, `1-`, `2+`)
- Full pdb test suite: 49 passed, 7 xfailed

```
$ pytest tests/pdb/ -q
49 passed, 7 xfailed, 9 warnings in 3.68s
```

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `d0772fca11b7`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.