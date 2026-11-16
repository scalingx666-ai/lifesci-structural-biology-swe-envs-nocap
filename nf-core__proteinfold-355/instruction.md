# Issue

**Title:** Remove unneccesary params

## Description

- Removed the following params from boltz mode:
  - write_full_pae: PAE report is required for downstream pipeline. Negligible time to produce. No reason to turn it off
  - boltz_out_dir: This will affect where files end up in nf work directory. May break downstream channels.
  - boltz_output_format: Downstream modules require PDB format. Vast majority of predictions will be compatible with PDB. May want to add general support for cif in future release.

- Removed the following params from helixfold3 mode:
  - logging_level: No reason to change from default.
  - model_name: No reason to change from default.

## PR checklist

- [x] This comment contains a description of changes (with reason).
- [x] Make sure your code lints (`nf-core lint`).
- [x] Ensure the test suite passes (`nextflow run . -profile test,docker --outdir <OUTDIR>`).
- [x] Check for unexpected warnings in debug mode (`nextflow run . -profile debug,test,docker --outdir <OUTDIR>`).
- [x] Usage Documentation in `docs/usage.md` is updated.
- [x] `CHANGELOG.md` is updated.
- [x] `README.md` is updated (including new tool citations and authors/contributors).

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `09ab765a8d3a`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.