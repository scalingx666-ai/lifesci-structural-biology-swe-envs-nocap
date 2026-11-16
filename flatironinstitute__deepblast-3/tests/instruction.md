# Issue

**Title:** Adding in packing / unpacking strategy

## Description

To make the book keeping easier to keep track of, all of the potentials (match / gap scoring functions) are now packed inside of theta.  This also guarantees that E is the same dimension as theta, which is important for calculating gradients.

Need to double check to make sure that this legit.

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `c2c48130deb6`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.