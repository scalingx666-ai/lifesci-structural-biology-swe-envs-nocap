# Issue

**Title:** Fix extract metrics for broken modules

## Description

- Fixed HF3
  - Fixed metric parsing
  - Restored support for non-fasta input where name is different to meta.id
  - Added path to nhmmer binary required for RNA
- Fixed RFAA
  - Fixed metric parsing
  - Restored support for non-fasta input where name is different to meta.id
- Fixed colabfold_batch for unrelaxed case (related to #244)
- Added temporary non-biopython PDBparser for containers without biopython installed
- Added extract_metrics to esmfold to populate required channels

## PR checklist

- [x] This comment contains a description of changes (with reason).
- [x] Make sure your code lints (`nf-core lint`).
- [x] `CHANGELOG.md` is updated.

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `b9077405504d`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.