# Issue

**Title:** Update utils_nfschema to fix help message with strict syntax

## Description

Fix help message with strict syntax to have a green check in the [strict-syntax-health](https://github.com/nf-core/strict-syntax-health) repo, see [here](https://github.com/nf-core/strict-syntax-health/blob/1599b1847e8f8d216f4e289bb9dec580e38ae8fe/lint_results/prints-help-results/proteinfold_help.txt#L9)

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `96f9350fcf4d`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.