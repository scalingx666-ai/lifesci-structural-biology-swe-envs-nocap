# Issue

**Title:** Increase clickTab JQuery Selector Specificity

## Description

For multiple molecules, the lack of JQuery Selector specificity meant that these multiple instances were interfering with each other. This makes it so that the clickTab event only affects the molecule it is related to.

This also prevents the click listener from being applied repeatedly when multiple molecules are loaded again due to the previous lack of selector specificity.

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `cb1e0f45a2e4`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.