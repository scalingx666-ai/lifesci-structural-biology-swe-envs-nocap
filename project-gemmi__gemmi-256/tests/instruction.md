# Issue

**Title:** xds2mtz fixup reading XDS_ASCII.HKL that does not have MAXC column.

## Description

XDS_ASCII.HKL files do not have MAXC, here's a kludge to fix it for the moment.

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `509383847e8b`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.