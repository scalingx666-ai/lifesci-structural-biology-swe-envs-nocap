# Issue

**Title:** Cast line_idx to int64 in empty PDB record frames

## Description

### Description

The `line_idx` column of an empty record DataFrame (e.g. `ANISOU` for a file without anisotropic records, or `HETATM` for a protein-only file) comes out as `object`, while non-empty frames get `int64`. `_construct_df` casts every column listed in `pdb_records`, but `line_idx` is appended separately and was never cast. This casts it to `int64` after the existing dtype loop, as suggested in the issue.

Tested: the new `test_line_idx_dtype_for_empty_records` fails on `main` (`dtype('O')` for `ANISOU` in `3eiy.pdb`) and passes with the change. Full `pytest`: 144 passed, 3 skipped, 14 xfailed. `flake8` reports nothing new on the touched files.

### Related issues or pull requests

### Pull Request Checklist

- [x] Added a note to `docs/CHANGELOG.md`
- [x] Added a unit test in `tests/pdb/test_read_pdb.py`
- [x] Ran `pytest` and all tests pass
- [x] Checked for style issues with `flake8`

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `e6f0e42d3c78`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.