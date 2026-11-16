# Issue

**Title:** CI: run the tests when the code comparison fails - issue #1750

## Description

> Before submitting, read the [contributing guidelines](CONTRIBUTING.md) and the [AI policy](AI-POLICY.md).

## What does this PR do and why?
The step added in #1749, which compares the PR's code between pushes, runs with GitHub's default `bash -e`, without `pipefail`. A failing `git merge-base` or `git diff` inside `patch_id` was hidden by the pipe: both patch ids were empty, hence equal, and the tests were skipped whenever they had passed on the previous head, although the code may have changed.

- `set -o pipefail` in the script.
- Each patch id is computed in a checked command: any failure to fetch or compare the commits runs the tests.

## How was this tested?
The step's script, extracted from the workflow, run locally with `bash -e` (as on GitHub) on commits of #1745:
- code changed but base commit unresolvable: the current version skips the tests (`skip=true`), the fixed one runs them (`skip=false`);
- merge of `main` after a fully tested push: still skipped;
- code change: tested;
- unknown commit: tested.

## AI assistance
Claude Code found the problem while porting #1749 to disvis and powerfit, wrote the fix and checked it as described above. I reviewed the changes.

## Checklist

- [X] Tests cover the new and/or changed code (CI only; tested locally as described)
- [X] Documentation updated if needed (also in the [haddock3 user-manual](https://github.com/haddocking/haddock3-user-manual)) (not needed)
- [X] `CHANGELOG.md` updated for user-facing changes (not user-facing)

## Related issues

## Notes for reviewers
Same fix as in haddocking/disvis#38 and haddocking/powerfit#155.

🤖 Generated with [Claude Code](https://claude.com/claude-code)

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `c352ed0f8091`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.