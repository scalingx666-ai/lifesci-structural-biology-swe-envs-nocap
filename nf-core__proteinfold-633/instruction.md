# Issue

**Title:** fix comparison reports with esmfold for multirow samplesheets

## Description

Comparison report includes an MSA coverage plot for each mode. Since ESMFold does not use an MSA, it is populated with a dummy file. However by using merge, only the first of a multi-sample samplesheet gets populated with a dummy file and only a single comparison report can get generated. This change ensures that every sample gets the dummy msa file and generates a comparison report for every sample.

## PR checklist

- [x] This comment contains a description of changes (with reason).
- [x] Make sure your code lints (`nf-core pipelines lint`).
- [x] `CHANGELOG.md` is updated.

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `adda74069284`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.