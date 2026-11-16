# Issue

**Title:** fix wrong variable deletion from run_alphafold2_pred

## Description

#283 removed the alphafold2_model_preset argument from the call to run_alphafold2_pred but not from the function definition (removing db_preset from function definition). Instead the full_dbs argument should have been deleted.

run_alphafold2_pred will not run with this bug since a bool is passed to the internal model_preset argument which is invalid.

This PR is a tiny bugfix which fixes this issue.

## PR checklist

- [x] This comment contains a description of changes (with reason).
- [x] If you've fixed a bug or added code that should be tested, add tests!
- [x] Make sure your code lints (`nf-core lint`).
- [x] Ensure the test suite passes (`nextflow run . -profile test,docker --outdir <OUTDIR>`).

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `257ab462c50b`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.