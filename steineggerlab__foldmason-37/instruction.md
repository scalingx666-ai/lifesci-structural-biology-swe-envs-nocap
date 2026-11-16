# Issue

**Title:** Feature/two pass contact

## Description

Adds an optional second alignment pass with contact refinement, enabled with `--two-pass`.
Uses first alignment to define anchor matches, collects residue-residue contact information within them, adds a contact consistency bonus and realigns.

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `b8b53972cd97`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.