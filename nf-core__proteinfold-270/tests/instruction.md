# Issue

**Title:** Fix ESMFold Residue Numbering in COMPARE_STRUCTURES (issue #257)

## Description

This PR introduces the reset_residue_numbers function to bin/generate_comparison_report.py, ensuring that each chain in a n esmfold multimer starts its residue numbering from 1.

Problem:
The COMPARE_STRUCTURES step was failing due to incorrect residue numbering in ESMFold multimers. ESMFold does not natively support multimer mode. Instead, it predicts monomers with a large gap (512 + 25 residues) between chains. This causes misaligned numbering, breaking downstream alignment steps.

Solution:
The reset_residue_numbers function now renumbers each chain in an esmfold multimer pdb. Ensures numbering starts from 1 for each chain. Prevents misalignment issues in COMPARE_STRUCTURES.

Passed tests when running af2, colabfold and esmfold in parallel 

.

## PR checklist

- [X] This comment contains a description of changes (with reason).
- [ ] If you've fixed a bug or added code that should be tested, add tests!
- [ ] If you've added a new tool - have you followed the pipeline conventions in the [contribution docs](https://github.com/nf-core/proteinfold/tree/master/.github/CONTRIBUTING.md)
- [ ] If necessary, also make a PR on the nf-core/proteinfold _branch_ on the [nf-core/test-datasets](https://github.com/nf-core/test-datasets) repository.
- [X] Make sure your code lints (`nf-core lint`).
- [X] Ensure the test suite passes (`nextflow run . -profile test,docker --outdir <OUTDIR>`).
- [ ] Check for unexpected warnings in debug mode (`nextflow run . -profile debug,test,docker --outdir <OUTDIR>`).
- [ ] Usage Documentation in `docs/usage.md` is updated.
- [ ] Output Documentation in `docs/output.md` is updated.
- [ ] `CHANGELOG.md` is updated.
- [ ] `README.md` is updated (including new tool citations and authors/contributors).

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `6883bd21c9ac`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.