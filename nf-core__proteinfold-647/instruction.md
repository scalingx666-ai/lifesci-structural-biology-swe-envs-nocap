# Issue

**Title:** Fix missing X character in AF3 and Boltz fasta processing

## Description

Very quick fix to stop the scripts converting fasta inputs with `X` entries being categorised as smiles.

## PR checklist

- [x] This comment contains a description of changes (with reason).
- [x] Make sure your code lints (`nf-core pipelines lint`).
- [x] `CHANGELOG.md` is updated.

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `7d7a5ed134cc`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.