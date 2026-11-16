# Issue

**Title:** Separating Vnuc from Fermi.Molecule for coming gradient work

## Description

The `Vnuc` field has been removed from the `Fermi.Molecule` struct. While this approach worked for single-point energies, it does not for finite difference gradients because `Vnuc` is can't be updated when the atomic coordinates are changed. `Vnuc` is instead computed during the RHF or UHF calculation.

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `936a25c7c1e3`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.