# Issue

**Title:** Added validation of workflows against general default.yaml parameters

## Description

## What does this PR do and why?

The current code was not testing the validity of the workflows (toml files) against the general parameters defined in `src/haddock/modules/default.yaml`.  This caused wrong parameters to be accepted (see issue #1691). This has not been corrected.

## How was this tested?

New tests created, all tests passing

## AI assistance

Claude assistance to implement the validation and add tests.

## Checklist

- [X] Tests cover the new and/or changed code
- [ ] Documentation updated if needed (also in the [haddock3 user-manual](https://github.com/haddocking/haddock3-user-manual)
- [X] `CHANGELOG.md` updated for user-facing changes

## Related issues

#1693 
#1691

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `35935f9b3fe5`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.