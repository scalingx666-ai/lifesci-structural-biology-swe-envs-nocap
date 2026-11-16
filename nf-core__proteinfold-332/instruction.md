# Issue

**Title:** fix superpositon bug in reports

## Description

.

Makes report superpositions more robust by:
- Ignoring hydrogens
- Indexing atoms by chain id in addition to residue id and atom name.

Best practise is to align structures by something like TMalign (considering only CA for proteins) which is more robust to outliers than RMSD but left for future work since need to consider how to handle small-molecules etc.

## PR checklist

- [x] This comment contains a description of changes (with reason).
- [x] Make sure your code lints (`nf-core lint`).
- [x] `CHANGELOG.md` is updated.

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `b8cdaf8830dd`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.