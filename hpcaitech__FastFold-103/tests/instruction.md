# Issue

**Title:** Fix multimer kernel bug

## Description

1. for sequence > 4000, use chunk inside layernorm kernel to avoid kernel error.
3. update multimer template code to save memory
4. polish monomer tempalte
5. polish template code about layernorm

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `930a58adb471`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.