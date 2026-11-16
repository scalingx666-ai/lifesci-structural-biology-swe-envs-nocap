# Issue

**Title:** CI: test every push that changes the code of a PR - issue #1752

## Description

> Before submitting, read the [contributing guidelines](CONTRIBUTING.md) and the [AI policy](AI-POLICY.md).

## What does this PR do and why?
Removes the "code of the PR unchanged" skip of #1749 (and its fallback, #1751), for the reasons raised in the review of haddocking/disvis#38:
- `git patch-id` ignores whitespace, so a push that only re-indents lines of the PR skipped the tests;
- after merging `main`, the PR together with the new `main` was not tested before merging.

The jobs depend again only on the `tj-actions/changed-files` filters. The `*.md` exclusions added in #1749 are kept and now also cover `docs/` (the only filtered path without one), so a change that only touches Markdown files does not run the tests. The docs build does not use `-W`, so a Markdown change cannot fail it.

## How was this tested?
- The re-indent case was reproduced in a test repository (same patch ID before and after).
- The workflow is the one from before #1749 plus the `*.md` exclusions (`git diff 8969933d3^ -- .github/workflows/ci.yml`).
- The workflow runs on this PR.

## AI assistance
Claude Code wrote the change and the checks above; I reviewed them.

## Checklist

- [ ] Tests cover the new and/or changed code
- [ ] Documentation updated if needed (also in the [haddock3 user-manual](https://github.com/haddocking/haddock3-user-manual)
- [ ] `CHANGELOG.md` updated for user-facing changes

## Related issues

## Notes for reviewers

🤖 Generated with [Claude Code](https://claude.com/claude-code)

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `d67d8a597568`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.