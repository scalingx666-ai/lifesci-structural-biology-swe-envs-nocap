# Issue

**Title:** Fixing needleman-wunsch spelling. easier model loading

## Description

There was a weird mix up with sentencepiece.  Apparently we were treating sentencepiece as a hparam, so pytorch-lightning stored the original paths, requiring these exact paths to be inplace when model loading.

We got rid of that - and we have confirmed that these models can be loaded on other machines.

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `7c03f5d9f72e`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.