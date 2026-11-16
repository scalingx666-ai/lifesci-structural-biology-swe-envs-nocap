# Issue

**Title:** ci: Python 3.13 in matrix, per-marker codecov uploads, drop stale deptry entry

## Description

## Summary

Wave 1 of post-audit follow-ups (config tidy, no behavior change).

| Item | Change |
|---|---|
| F3 | `tests-core` matrix gains `3.13`. Smoke-tested locally with `uv lock --python 3.13 --check`. |
| F2 | `tests-ase`, `tests-train`, `tests-pysis`, `tests-hf` now run with `--cov --cov-config=pyproject.toml --cov-report=xml` and upload to Codecov with a per-marker `flags:` discriminator (`core`, `ase`, `train`, `pysis`, `hf`). The empty-collection jobs gate the upload on `coverage.xml` actually existing. |
| F4 | Drop `ignite` from `[tool.deptry.per_rule_ignores] DEP001`. `pytorch-ignite` is a real runtime dep mapped via `package_module_name_map`; the ignore was redundant. Comment corrected. |

## Notes

- Branch protection currently requires `tests-core (3.11)` and `tests-core (3.12)` only. The new `tests-core (3.13)` job will run but is not blocking. We can add it to required after one or two clean cycles if you want.
- Codecov status is `project: off, patch: off` (intentional per `codecov.yaml`); flags only affect the dashboard view, not gating.

## Test plan

- [x] `make check` (ruff, prettier, deptry) — green
- [x] `uv run deptry .` — passes without `ignite` ignore
- [x] `uv lock --python 3.13 --check` — clean
- [ ] CI: full Main matrix on this branch including new `tests-core (3.13)`
- [ ] Codecov: confirm flags `core`/`ase`/`train`/`pysis`/`hf` show up after upload

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `658c558af74b`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.