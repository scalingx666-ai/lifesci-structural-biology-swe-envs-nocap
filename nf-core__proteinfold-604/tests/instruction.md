# Issue

**Title:** Allow AlphaFold3 JSON files as direct samplesheet input

## Description

Branch ch_samplesheet in alphafold3.nf by file extension: `.json` files are passed directly to `RUN_ALPHAFOLD3`, while `fasta` files continue through `FASTA_TO_ALPHAFOLD3_JSON` as before.

 

## PR checklist

- [x] This comment contains a description of changes (with reason).
- [x] Make sure your code lints (`nf-core pipelines lint`).
- [x] Ensure the test suite passes (`nextflow run . -profile test,docker --outdir <OUTDIR>`).
- [x] Check for unexpected warnings in debug mode (`nextflow run . -profile debug,test,docker --outdir <OUTDIR>`).
- [x] `CHANGELOG.md` is updated.

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `4469144e20c7`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.