# Issue

**Title:** Fix failing tests

## Description

Fixes the tests for the latest jax version while keep the backward compatibility. Also fix other minor issues. 

Resolves
- #50 
- #80 
- #349

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `e91414377a5a`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.