# Issue

**Title:** Fix comparison report to correctly label msa coverage plots

## Description

- Modified comparison_report template to accept labels for msa_coverage plots
- Modified generate_comparison_report to provide msa_coverage plot labels from the corresponding pdb name
- Fixed bug where pdb name and msa plot were out of sync due to sorting list of pdbs.

## PR checklist

- [x] This comment contains a description of changes (with reason).
- [x] Make sure your code lints (`nf-core lint`).
- [x] Ensure the test suite passes (`nextflow run . -profile test,docker --outdir <OUTDIR>`).
- [x] Check for unexpected warnings in debug mode (`nextflow run . -profile debug,test,docker --outdir <OUTDIR>`).

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `15cc18ab47ed`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.