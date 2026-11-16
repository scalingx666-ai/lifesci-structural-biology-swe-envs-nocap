# Issue

**Title:** Update `ring_dict` with "resnum" + bugfix

## Description

Along fixing this bug I found that normal vectors found in `ring_dict` were generated non-uniformly for both toolkits. 

Right now we normalize ring paths so that we always start with the smalest atom IDX and move onto in the direction of smallest ascent of subsequent atom IDX. I **think** it already happens in RDKit, although would have to check that further before I switch it of.

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `8514e552b46c`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.