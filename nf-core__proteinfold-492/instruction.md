# Issue

**Title:** Clean TODOs from code and create issues instead for 2.0.0 release preparation

## Description

This PR eliminates several TODOs in the code in favour of issues:

* Refactor generate_report.py plotting code: #484
* Rename multiqc emit channel to plddt: #485
* Support cif in Boltz like HelixFold3: #486
* Rename Boltz npz output channels to avoid conflicts: #487
* Validate unique IDs when using split_fasta: #488
* Rename Boltz outdir inside process: #489 
* MSA processing for Boltz not solid / NPZ→TSV conversion needed: #490
* RFAA --a3ms to chain /A/msa path uncertainty: #491




<br class="Apple-interchange-newline">

## PR checklist

- [x] This comment contains a description of changes (with reason).
- [ ] If you've fixed a bug or added code that should be tested, add tests!
- [ ] If you've added a new tool - have you followed the pipeline conventions in the [contribution docs](https://github.com/nf-core/proteinfold/tree/master/.github/CONTRIBUTING.md)
- [ ] If necessary, also make a PR on the nf-core/proteinfold _branch_ on the [nf-core/test-datasets](https://github.com/nf-core/test-datasets) repository.
- [x] Make sure your code lints (`nf-core lint`).
- [ ] Ensure the test suite passes (`nextflow run . -profile test,docker --outdir <OUTDIR>`).
- [x] Check for unexpected warnings in debug mode (`nextflow run . -profile debug,test,docker --outdir <OUTDIR>`).
- [ ] Usage Documentation in `docs/usage.md` is updated.
- [ ] Output Documentation in `docs/output.md` is updated.
- [x] `CHANGELOG.md` is updated.
- [ ] `README.md` is updated (including new tool citations and authors/contributors).

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `ce80ab470e3f`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.