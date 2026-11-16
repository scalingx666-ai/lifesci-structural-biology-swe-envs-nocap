# Issue

**Title:** Addresses issue #1392 by initialising maxid to 1

## Description

## What does this PR do and why?

Initialises maxid to 1 in the separate.cns script to avoid that it remains 0, which would cause a CNS error.

## How was this tested?

All tests passing.

## AI assistance

N.A

## Checklist

- [ ] Tests cover the new and/or changed code
- [ ] Documentation updated if needed (also in the [haddock3 user-manual](https://github.com/haddocking/haddock3-user-manual)
- [X] `CHANGELOG.md` updated for user-facing changes

## Related issues

#1392 - recently commented upon by an external user who reproduced the problem.

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `5d854b1aadfc`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.