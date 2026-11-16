# Issue

**Title:** Fix typo (`nn.Layernorm` -> `nn.LayerNorm`)

## Description

See the title. The example doesn't work at the moment because of a typo in model.py. I fixed the typo.

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `d0a344672564`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.