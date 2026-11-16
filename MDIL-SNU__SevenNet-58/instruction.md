# Issue

**Title:** Fix typos and add `codespell` pre-commit hook

## Description

best to fix typos early before you gain a large user base if fixing those typos involves breaking changes as is the case here for [`data_key_indic(ie->e)s`](https://github.com/MDIL-SNU/SevenNet/compare/main...janosh:SevenNet:fix-typos?expand=1#diff-f29d11557d77ed3cda288d5c280515c6a08c3766e175ac10c9f3803ffb2e54f8R53)

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `14b60d3ca202`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.