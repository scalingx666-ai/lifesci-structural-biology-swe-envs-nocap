# Issue

**Title:** Removed the molecule sanitisation and ensemble splitting from topocg

## Description

## What does this PR do and why?

The molecule sanitisation and ensemble splitting steps were removed from topocg as unnecessary (and problematic steps with ligands). topocg receives its molecules from topoaa which has already sanitised and split ensembles.

## How was this tested?

By running the CG workflow on BM5 entry 1AZS which was original causing problems.
Previously the topocg step was editing the PDB in the topoaa directory and removing the ligand.
Now the ligand is correctly preserved and the file in untouched.

## AI assistance

## Checklist

- [X] Tests cover the new and/or changed code
- [ ] Documentation updated if needed (also in the [haddock3 user-manual](https://github.com/haddocking/haddock3-user-manual)
- [X] `CHANGELOG.md` updated for user-facing changes

## Related issues

#1638

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `80e851f9c5f3`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.