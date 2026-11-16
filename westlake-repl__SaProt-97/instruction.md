# Issue

**Title:** Add support for specifying chains when adding the pLDDT mask

## Description

Hi! I noticed that your `get_struc_seq` support specifying chains while  `extract_plddt` do not, so I modify the function to enable applying plddt mask for multi-chain complex. In addition to that I add quotation mark around the path in foldseek arguments to make it more robust against paths with whitespace.

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `a94354d4c9bd`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.