# Issue

**Title:** fix dna nucleobase atom selection default for capri

## Description

> Before submitting, read the [contributing guidelines](CONTRIBUTING.md) and the [AI policy](AI-POLICY.md).

## What does this PR do and why?

This PR modifies the default CG atom selection during `caprieval` to select the nucelo-bases for DNA (l.316), matching the all-atom selection.

## AI assistance

Nope

## Checklist

- [ ] Tests cover the new and/or changed code
- [ ] Documentation updated if needed (also in the [haddock3 user-manual](https://github.com/haddocking/haddock3-user-manual)
- [x] `CHANGELOG.md` updated for user-facing changes

## Related issues



## Notes for reviewers

Sorry, the automatic linting program did not allow me to touch only the appropriate part, and I had to change the linting all along the script...

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `8efc6cbd00c8`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.