# Issue

**Title:** Import foldcomp_dataset without the optional lightning package

## Description

#### Reference Issues/PRs

Found while setting up the docs build in #503, which installs `lightning` only so that autodoc can import this module.

#### What does this implement/fix? Explain your changes

`lightning` is an optional dependency of `graphein.ml.datasets.foldcomp_dataset`. The module catches its `ImportError` and logs a warning. But `FoldCompLightningDataModule` subclasses `L.LightningDataModule` when the module is imported, and `L` is only bound if the import succeeded. Without `lightning`, importing the module raises `NameError: name 'L' is not defined`, so `FoldCompDataset`, which doesn't need lightning, can't be used either.

When `lightning` is missing, the base class now falls back to `object`, so the module imports. `FoldCompLightningDataModule.__init__` raises an `ImportError` with the usual install instructions. With `lightning` installed, nothing changes: the class is still a `LightningDataModule` subclass.

I didn't use `requires_python_libs`: it wraps functions, so applying it to the class would replace the class with a function and still leave the base-class problem.

#### What testing did you do to verify the changes in this PR?

- **New `tests/ml/test_foldcomp_dataset.py`:** it simulates a missing `lightning` and reloads the module. It then checks that the module imports, that `FoldCompDataset` is available, and that creating `FoldCompLightningDataModule` raises an `ImportError` mentioning lightning. It fails on `master` with the `NameError`.
- **`pytest tests/ml`** with torch and PyG installed, without lightning: 19 passed, 4 skipped (DGL isn't installed).
- **The new test with `lightning` installed:** passes. `FoldCompLightningDataModule` is still a subclass of `lightning.LightningDataModule`.
- **`ruff check` and `ruff format`** pass on the changed files.
- **Environment:** Python 3.12 on macOS.

#### Pull Request Checklist

- [x] Added a note about the modification or contribution to the `./CHANGELOG.md` file (if applicable)
- [x] Added appropriate unit test functions in the `./graphein/tests/*` directories (if applicable)
- [ ] Modify documentation in the corresponding Jupyter Notebook under `./notebooks/` (if applicable)
- [x] Ran the relevant tests (`tests/ml`)
- [x] Checked for style issues (`ruff check`, `ruff format`)

🤖 Generated with [Claude Code](https://claude.com/claude-code)

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `94da785854c4`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.