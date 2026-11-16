# Issue

**Title:** Yn patch 1

## Description

[Fix] Predict input without target_col will cause exception, introduced in the last update.
  [Fix] When smiles is None, using atoms as SMILES for splitting.
  [Update] fix typo and version 0.1.2.post2

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `35efc6575a45`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.