# Issue

**Title:** Skip CI tests on pushes that do not change the code of a PR - issue #1748

## Description

> Before submitting, read the [contributing guidelines](CONTRIBUTING.md) and the [AI policy](AI-POLICY.md).

## What does this PR do and why?
The `changes` job compares the whole PR with `main`. A commit that only resolves a `CHANGELOG.md` conflict after approval, or a merge of `main` into the branch, therefore reruns the full test suite (about 30 min, six jobs) although the code of the PR did not change.

- **New step in `changes`:** on a PR update (`synchronize`), compare the PR's own diff on the code paths (`src`, `tests`, `integration_tests`, `end-to-end_tests`, `docs`, `pyproject.toml`, `setup.py`, `Dockerfile`) at the previous and the new head, each against its merge base with `main`. `git patch-id` ignores line numbers, so merging `main` does not count as a change.
- **Skip only when safe:** the test and docker jobs are skipped only if the code is unchanged and all `test-*` check runs passed on the previous head, because GitHub treats skipped required checks as passing.
- **Tests still run** after a code change, when the previous run failed, was cancelled or did not run, when the previous head cannot be fetched (force-push), when the API call fails, for new PRs, and for scheduled and manual runs.
- **`.md` files under the code paths** (except `docs/`) no longer trigger the tests.

## How was this tested?
The step's script, extracted from the workflow, was run locally with `bash -eo pipefail` on the commits of #1745:
- merge of `main` after a fully tested push: tests skipped;
- merge of `main` after a push on which no CI ran: tests run;
- code change (`969093bfb`): tests run.

The workflow itself can only be exercised after merging: this PR does not touch the code paths, so only the `changes` job runs here.

## AI assistance
Claude Code wrote the workflow change based on my specifications and checked it as described above. I reviewed the changes.

## Checklist

- [X] Tests cover the new and/or changed code (CI only; tested locally as described)
- [X] Documentation updated if needed (also in the [haddock3 user-manual](https://github.com/haddocking/haddock3-user-manual)) (not needed)
- [X] `CHANGELOG.md` updated for user-facing changes (not user-facing)

## Related issues

## Notes for reviewers
- After merging `main` into a branch, the combination is no longer tested in the PR; it is tested on `main` by the scheduled run after the merge.
- After a skipped run, the next non-code push runs the tests again (the previous head has skipped, not passed, checks).

🤖 Generated with [Claude Code](https://claude.com/claude-code)

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `909a2b3bb72f`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.