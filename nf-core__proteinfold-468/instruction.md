# Issue

**Title:** Clean alphafold3 outputs

## Description

Group outputs into a raw directory, updating publishing patterns, and ensuring intermediate files are handled correctly.

- Added publishing rules to match output layout from #454 
- Conditional publishing of intermediate files to raw directory, set by the `params.save_intermediates parameter`
- Makes alphafold3 deterministic to keep cache 

Addresses the Alphafold3 component of #394 

Also, updates nf-test snapshots after #469

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `cb2ce2d0b5c9`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.