# Issue

**Title:** Small fixes for v2.1.0

## Description

Small fixes for the upcoming ProteinFold 2.1.0 release:

- Enable `params.use_gpu` automatically when selecting the `gpu` profile.
- Use the runtime AlphaFold3 JSON `name` when locating generated metric files. AlphaFold3 names its output directory from the JSON content, which can differ from the lower-cased samplesheet ID.
- Declare the hidden `modules_testdata_base_path` parameter in `nextflow.config` and `nextflow_schema.json`, preventing undeclared-parameter/schema warnings from module tests.
- Fix AlphaFold3 Rfam database detection by accepting both lowercase/underscore and uppercase/hyphen filename conventions. .

## PR checklist

  - [x] This comment contains a description of changes (with reason).
  - [x] Make sure your code lints (`nf-core pipelines lint`).
  - [x] Check for unexpected warnings in debug mode (`nextflow run . -profile debug,test,docker --outdir <OUTDIR>`).
  - [x] `CHANGELOG.md` is updated.

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `a414fd136800`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.