# Issue

**Title:** Scientific validation tests

## Description

Scientific values validation of structure predictions. Keeping this PR to just 'runs from the workflow'. I was also thinking of 'fixed-seed' snapshot vs 'random seed' fuzzy match, but will put in another PR to keep this simpler to merge. 

Attempting to guard against future regression in case of #419 -style `NaN` errors, etc.

The use of tags removes mode name duplication in a longer test file. Tags would likely drop a lot of duplicate `/conf` and `/test` files where only `modeName` changes.

Can be considered to close #523

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `d4e1cb858b53`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.