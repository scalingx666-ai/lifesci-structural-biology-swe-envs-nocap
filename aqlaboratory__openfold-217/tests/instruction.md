# Issue

**Title:** Fix missing subtract_plddt argument in prep_output call

## Description

This PR is a very minor bug fix to add `args.subtract_plddt` to the `prep_output`call which otherwise fails due to a missing argument.

Interestingly `subtract_plddt` is already defined in the argument parser, but never used in the script.

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `7384e2d6a763`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.