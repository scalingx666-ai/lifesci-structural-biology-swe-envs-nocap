# Issue

**Title:** Force single pdb workflow outputs to return as a list

## Description

**Problem**
- AlphaFold2, AlphaFold3, ColabFold, HelixFold3 modes all limit the number of pdbs passed to generate report to 5.
- The pdb channel is populated by a glob which typically finds many pdbs and returns a list.
- Populating the channel with a single pdb is not interpreted as a list and breaks downstream filtering logic causing a crash.

**Solution**
- This PR makes workflows more robust to different usage conditions which may generate only a single output by forcing pdb outputs to be cast as a list (even for a single output). 
- It also provides a pathway to preparing a test profile with greatly reduced compute requirements (eg reducing AF2 multimer outputs from 25 to 1).

## PR checklist

- [x] This comment contains a description of changes (with reason).
- [x] Make sure your code lints (`nf-core lint`).
- [x] Ensure the test suite passes (`nextflow run . -profile test,docker --outdir <OUTDIR>`).
- [x] `CHANGELOG.md` is updated.

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `e5773100ac84`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.