# Issue

**Title:** fix: update pre-commit hooks without breaking Python 3.10

## Description

The `tox-ini-fmt` update in #2488 prevents pre-commit from installing its hook environments on Python 3.10: version 1.10.0 requires Python >=3.11. Environment installation happens before pre-commit skips hooks with no matching files, so this also blocks commits that do not touch any tox configuration.

Remove the obsolete hook. The repository migrated `tox.ini` to `[tool.tox]` in `pyproject.toml` in #2289 and has no tracked `tox.ini` files. Keep the other hook upgrades from #2488.

Supersedes #2488 with the same Ruff, clang-format, and cython-lint upgrades plus the Python 3.10 compatibility fix. It addresses  The diff against current `master` is limited to `.pre-commit-config.yaml`.

Validation:
- Reproduced the original hook installation failure with Python 3.10.18 and pre-commit 4.6.2: `ERROR: Package 'tox-ini-fmt' requires a different Python: 3.10.18 not in '>=3.11'`.
- `pre-commit validate-config` passed on Python 3.10 and 3.12.
- `pre-commit run --all-files --show-diff-on-failure` passed on Python 3.10.18 with pre-commit 4.6.2.
- `pre-commit run --all-files --show-diff-on-failure` passed on Python 3.12.2 with pre-commit 4.7.0.
- `git diff --check` passed.
- [GitHub Actions test job](https://github.com/deepmodeling/reacnetgenerator/actions/runs/40887715055/job/123495789332): 389 passed, 6 xfailed, 4 xpassed.

CI disposition for reviewed head `3cd0ca9189f0e9e2a297f65fd2520670782ca1fa`: all required checks have passed or are intentionally skipped (`upload_pypi`). The Benchmark workflow passes, while the separate  remains failed. CodSpeed is not a required check under the current `master` rules. Its report explicitly warns that base and head used different runner types and that wall-time results may be unreliable; the complete diff changes only `.pre-commit-config.yaml`, with no runtime or benchmark source changes. The repository collaborator has approved proceeding with this configuration-only update on that basis. This disposition does not turn the failed check into a passing result or establish equivalent performance; no comparable-environment benchmark rerun was performed. Proceed through the repository's normal squash merge queue, then close #2488 as superseded.

Commit trailers for the repository's PR-body-based squash merge:

Coding-Agent: Codex
Codex-Version: codex-cli 0.165.0-alpha.1.2
Model: gpt-6-astra
Reasoning-Effort: xhigh

Coding agent: Codex
Codex version: codex-cli 0.165.0-alpha.1.2
Model: gpt-6-astra
Reasoning effort: xhigh

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `cea65d49185f`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.