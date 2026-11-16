# Issue

**Title:** Tersoff model implementation

## Description

It is a first attempt at including the Tersoff model, one of the bond-order potential models. It has unique bond-order functions that determine the bond strength (resolve #162).

This is the first usage of JAX and JAX-MD for me, so many mistakes and bugs must have occurred. Please let me know what I have to fix. And, I am of course open to all suggestions.

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `593cea2b12e5`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.