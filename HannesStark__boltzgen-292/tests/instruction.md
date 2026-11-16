# Issue

**Title:** Align diffusion loss weights with batch multiplicity

## Description

Repeat fake-atom and residue-type weights with diffusion multiplicity, preventing shape errors and skipped batches when batch size exceeds one.

Credits: @gdesjardins (#230) and @fnachon (#251). This supersedes both PRs and also fixes residue-type weights.

Tests: 29 passed, including loss and gradient comparisons, on two PyTorch/Lightning versions. No full training run.

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `a07fea115311`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.