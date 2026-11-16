# Issue

**Title:** Clean rosettafold2na outputs

## Description

Group outputs into a raw directory, updating publishing patterns, and ensuring intermediate files are handled correctly.

- Added publishing rules to match output layout from Update publishdir patterns for alphafold2 modules #454
- Conditional publishing of intermediate files to raw directory, set by the params.save_intermediates parameter

Addresses the Rosettafold2na component of #394

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `d30acfadd722`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.