# Issue

**Title:** Refactor ensemble outputs

## Description

The existing procedure involves attempting to use the saving callbacks from the single trajectory case similarly for the ensemble outputs as well. This was fine but it doesn't work when using EnsembleDistributed.

In this PR I've reworked the saving to instead rely up the standard diffeq output+reduction setup. This means it'll now work in parallel and the code is a bit cleaner.

The only downside is that it will require recalculation of some quantities such as forces after the trajectory has finished. But the ensemble workflow isn't really intended for that purpose so this should be fine.

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `251afd29318e`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.