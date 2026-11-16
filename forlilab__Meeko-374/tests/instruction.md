# Issue

**Title:** bugfix template matching for protonated NGLU

## Description

Matching of fully protonated NGLU input failed. After all three rounds of matching, when more than one template passed, the code lists the templates with fewest missing H, and then the templates with fewest excess H. The fix consists in searching for the templates with fewest excess H in the templates with fewest missing H, instead of in the full list of templates that passed the three rounds of matching.

Add `--debug_fn` to `mk_prepare_receptor.py` to save debug level logging to the specified filename.

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `4156270a7950`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.