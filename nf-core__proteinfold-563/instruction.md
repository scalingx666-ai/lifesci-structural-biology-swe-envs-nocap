# Issue

**Title:** fix boltz csv sync

## Description

- This ensures that pre-computed msa files are paired with the correct input sequence in the boltz module.
- Also a small workaround to close #555 by creating a dummy mols.tar.

## PR checklist

- [x] This comment contains a description of changes (with reason).
- [x] Make sure your code lints (`nf-core lint`).
- [x] Ensure the test suite passes (`nextflow run . -profile test,docker --outdir <OUTDIR>`).

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `dbdfac64d48b`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.