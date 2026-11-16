# Issue

**Title:** Glycan linkage fixes

## Description

## What does this PR do and why?

Updated bondglycan.cns to have correct linkage detection for all supported glycans.

## How was this tested?

Regular tests passing

## AI assistance

Claude was used to detect the wrong/missing linkages and correct the script. Manual checks afterwards

## Checklist

- [ ] Tests cover the new and/or changed code
- [X] Documentation updated if needed (also in the [haddock3 user-manual](https://github.com/haddocking/haddock3-user-manual)
- [X] `CHANGELOG.md` updated for user-facing changes

## Related issues

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `0f3907a3a079`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.