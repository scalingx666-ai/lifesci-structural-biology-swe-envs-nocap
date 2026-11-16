# Issue

**Title:** Fixed inference script in multimer mode

## Description

1. Added uniprot data base path for multimer mode otherwise it crashes the programme 
2. Fixed local_alignment_dir for multimer otherwise it reports alignment not found error even though alignments are already calculated.

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `4208a76122ba`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.