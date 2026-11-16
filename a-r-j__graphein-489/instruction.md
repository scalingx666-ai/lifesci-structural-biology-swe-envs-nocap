# Issue

**Title:** Pin setuptools<81 to fix pkg_resources ImportError

## Description

Fixes the test collection errors on `master`, for example:

```
graphein/grn/features/node_features.py:5: from bioservices import HGNC, UniProt
.venv/.../bioservices/__init__.py:1: import pkg_resources
E   ModuleNotFoundError: No module named 'pkg_resources'
```

The lockfile has `bioservices` 1.11.2, which imports `pkg_resources`. setuptools 81 removed `pkg_resources`, and the lockfile had setuptools 84.1.0.

### Why not upgrade bioservices?

`bioservices` 1.15 and 1.16 no longer import `pkg_resources`, but both require `lxml<6`. Upgrading would move `lxml` from 6.1.0 back to 5.4.0, which is affected by CVE-2026-41066 / GHSA-vfmq-68hx-4jfw (high-severity XXE). That vulnerability was fixed in #479. No `bioservices` release avoids both problems.

### Change

- Add `setuptools>=78.1.1,<81` to the dependencies, with a comment explaining why. The lower bound avoids the advisory affecting setuptools releases before 78.1.1.
- `uv.lock`: setuptools 84.1.0 → 80.10.2. `bioservices` stays at 1.11.2 and `lxml` at 6.1.0.

Remove the pin once `bioservices` allows `lxml>=6`.

### Testing

On Python 3.11 with `uv sync --locked --extra dev --extra extras`, `tests/grn`, `tests/molecule` and `tests/utils/test_dependencies.py` give 63 passed, 5 skipped and 1 failed. The failure is `tests/grn/test_graphs.py::test_construct_graph`, which gets HTTP 403 from `regnetworkweb.org` when downloading RegNetwork data. That is an external problem and unrelated to this PR; this PR only fixes the import error that previously stopped the GRN tests from running.

🤖 Generated with [Claude Code](https://claude.com/claude-code)

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `9e094e4b86d6`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.