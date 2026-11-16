# Issue

**Title:** Added mpi and grid execution modes to general default.yaml

## Description

## What does this PR do and why?

The default.yaml file in `src/haddock/modules/` defined the exectution modes. It was missing the mpi and grid modes.
This PR corrects that.

## AI assistance

Claude actually identified the issue when analysing the code.

## Checklist

- [X] Tests cover the new and/or changed code
- [ ] Documentation updated if needed (also in the [haddock3 user-manual](https://github.com/haddocking/haddock3-user-manual)
- [X] `CHANGELOG.md` updated for user-facing changes

## Related issues

#1690

## Notes for reviewers

Note that this default.yaml file is currently not checked when assessing the validity of a workflow toml file. As such mpi and grid modes were accepted. This will be handled separately.

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `65537c8f100b`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.