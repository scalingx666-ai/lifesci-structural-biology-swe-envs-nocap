# Issue

**Title:** Update AF2 defaults

## Description

There are major benefits to running AlphaFold2 in split mode since it:
- avoids idle GPU usage.
- can more easily recover from a crash.

Similarly, the AlphaFold2 monomer_ptm model provides confidence metrics which are critical to interpret model outputs.

This PR enables both of these settings by default.

## PR checklist

- [x] This comment contains a description of changes (with reason).
- [x] Make sure your code lints (`nf-core lint`).
- [x] Ensure the test suite passes (`nextflow run . -profile test,docker --outdir <OUTDIR>`).
- [x] Check for unexpected warnings in debug mode (`nextflow run . -profile debug,test,docker --outdir <OUTDIR>`).
- [x] `CHANGELOG.md` is updated.

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `131a2437cb43`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.