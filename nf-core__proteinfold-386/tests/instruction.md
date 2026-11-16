# Issue

**Title:** Fix nested obsolete pdbs from pdb70

## Description

by chaining obsolete entries and collapsing to a single entry.
This solution has neglible overhead and maintains backwards compatibility with existing deployments.

## PR checklist

- [x] This comment contains a description of changes (with reason).
- [x] Make sure your code lints (`nf-core lint`).
- [x] Ensure the test suite passes (`nextflow run . -profile test,docker --outdir <OUTDIR>`).
- [x] `CHANGELOG.md` is updated.

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `9b95c0e4a26e`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.