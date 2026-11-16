# Issue

**Title:** WIP: C code for Needleman Wunsch

## Description

This is a working progress. But this should help eliminate the overhead regarding computing gradients. We will want the following completed before merging this in.

- [x] Python bindings
- [ ] Scaling benchmarks wrt number of cores
- [ ] Integrate into the pytorch lightning framework

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `b83782db4b20`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.