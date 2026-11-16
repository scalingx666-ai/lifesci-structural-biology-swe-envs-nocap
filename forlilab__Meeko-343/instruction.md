# Issue

**Title:** Flexibilize then parameterize

## Description

Work in progress to address #334: so far only added a test that fails, as expected, as parameterizing a flexible monomer makes backbone bonds rotatable, which is incorrect. Goal of this PR will be to move most of the `Polymer.flexibilize_sidechain()` to `Monomer` so that calling `Monomer.parameterize` doesn't make backbone bonds rotatable.

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `10cdb0c1eb79`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.