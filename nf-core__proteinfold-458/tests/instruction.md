# Issue

**Title:** Clean colabfold outputs

## Description

This PR depends on #454. I will leave as draft until #454 is merged.

In this PR I harmonised colabfold with other modes and cleaned up various issues:
- Changed colabfold to generate tsv files consistent with other modes (). This avoids special handling of seq_coverage plot.
- Updated colabfold publishdir settings to match current proposed standard (#394).
- Simplified colabfold workflow to have consistent behaviour between monomer and multimer ().
- Avoided colabfold always re-downloading model weights ().
- Changed colabfold_use_templates to default to False to avoid accidently spamming server (#209).

Additional minor fixes:
- Removed images from colabfold multiqc report based on multiqc guidelines.
- Removed some unneccessary commented text.
- Ensured _iptm.tsv files do not get created for monomers.
- Sorted .tsv files in rank sorted order.

## PR checklist

- [x] This comment contains a description of changes (with reason).
- [x] Make sure your code lints (`nf-core lint`).
- [x] Ensure the test suite passes (`nextflow run . -profile test,docker --outdir <OUTDIR>`).
- [x] `CHANGELOG.md` is updated.

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `99d65e293be2`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.