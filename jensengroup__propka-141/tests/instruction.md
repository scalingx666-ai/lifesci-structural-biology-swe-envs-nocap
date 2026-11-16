# Issue

**Title:** protonate.py: Rename Vanadium element from Va to V

## Description

This made PROPKA fail on PDB 1IDQ which has a Vanadium atom. The chemical symbol for Vanadium is V.

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `beddb0ac879c`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.