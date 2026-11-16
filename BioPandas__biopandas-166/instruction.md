# Issue

**Title:** Fix to_pdb for ANISOU records after label_models

## Description

### Code of Conduct

Read.

### Description

`label_models()` adds an integer `model_id` column to the `ANISOU` frame as well as to `ATOM` and `HETATM`. `to_pdb()` only skipped unexpected columns for `ATOM` and `HETATM`, so for `ANISOU` it tried to append the integer column to the output string and failed:

```python
ppdb = PandasPdb().read_pdb("tests/pdb/data/4eiy_anisouchunk.pdb")
ppdb.label_models()
ppdb.to_pdb("out.pdb")
# TypeError: can only concatenate str (not "int") to str
```

`to_pdb()` now skips `model_id` silently, the same way `to_pdb_stream()` already drops it, and unexpected `ANISOU` columns are skipped with the same warning used for `ATOM`/`HETATM` (checked against the `ANISOU` record fields).

Two tests added in `tests/pdb/test_write_pdb.py`: writing the ANISOU test file after `label_models()` gives back the original file without a `model_id` warning, and an extra `ANISOU` column is warned about and skipped. Both fail on `main` and pass with this change.

### Related issues or pull requests

### Pull Request Checklist

- [x] Added a note about the modification or contribution to the `./docs/sources/CHANGELOG.md` file (if applicable) (the changelog lives at `docs/CHANGELOG.md`)
- [x] Added appropriate unit test functions in the `./biopandas/*/tests` directories (if applicable)
- [ ] Modify documentation in the corresponding Jupyter Notebook under `biopandas/docs/sources/` (if applicable) (not needed)
- [x] Ran `PYTHONPATH='.' pytest ./biopandas -sv` and make sure that all unit tests pass (ran `pytest tests/pdb`: 86 passed, 3 skipped, 7 xfailed)
- [x] Checked for style issues by running `flake8 ./biopandas` (no new warnings in the changed lines)

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `2a21fd0d73d5`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.