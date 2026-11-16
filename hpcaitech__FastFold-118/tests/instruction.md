# Issue

**Title:** support training, fix some inplace func of nn

## Description

This PR should be merged after the other two.

1. Add training code and its shell script, support DDP now.
2. Add lr_scheduler and move loss to hub.
3. Modify some bugs introduced by openfold, the inplace func in `dropout` and the unused `out_product_mean` in `evoformer`.

For unit test, it would cause OOM on CI machine. I am trying to develop a tiny model.

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `164f67773f97`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.