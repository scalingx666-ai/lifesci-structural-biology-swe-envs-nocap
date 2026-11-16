# Issue

**Title:** Version string bump and changelog update for v0.5.2

## Description

## Summary
- Bump `__version__` in `biopandas/__init__.py` from `0.5.1` to `0.5.2`
- Update `docs/CHANGELOG.md`: move the unreleased entries into a new `### 0.5.2` section (numpy 2.4 / pandas 3 compatibility fix from #157, and the mol-file empty-line fix from #140)

## Test plan
- [ ] CI passes on this branch
- [ ] `python -c "import biopandas; print(biopandas.__version__)"` prints `0.5.2`

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `c92333890615`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.