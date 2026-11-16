# Issue

**Title:** [hotfix] Optimize template error msg, avoid no hit probs case

## Description

See 
When doing error processing, the error message itself would cause some errors. When it comes to the `Except`, the `hit.sum_probs` sometimes is None, which led to the error processing being useless.

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `765c8e4424b9`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.