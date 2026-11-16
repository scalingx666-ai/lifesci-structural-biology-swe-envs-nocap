# Issue

**Title:** add `sqlite3` check to `deeprank_is_available`

## Description

> Before submitting, read the [contributing guidelines](CONTRIBUTING.md) and the [AI policy](AI-POLICY.md).

## What does this PR do and why?
<!-- Please explain what you did in this PR -->

This PR adds an explicit check for deeprank's dependency on the python interpreter to have been compiled with `sqlite3`

## How was this tested?
<!-- Explain how the changes were verified -->

Running with a python interpreter compiled with `sqlite3` and without

## AI assistance
<!-- Did AI tools play a meaningful role in this PR? If so, note what they helped with and how you verified the output. Leave blank if not applicable. -->

None

## Checklist

- [x] Tests cover the new and/or changed code
- [ ] Documentation updated if needed (also in the [haddock3 user-manual](https://github.com/haddocking/haddock3-user-manual)
- [ ] `CHANGELOG.md` updated for user-facing changes

## Related issues
<!-- Link any relevant GitHub issues or user-manual PRs -->

 

## Notes for reviewers
<!-- Anything that needs special attention, known limitations, or follow-up work -->

This is an edge case, full python installations commonly used by users will have it's python interpreter compiled with `sqlite3` - but in thin environments this is not the case.

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `6261effa28a6`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.