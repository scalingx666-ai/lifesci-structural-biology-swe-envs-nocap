# Issue

**Title:** Refactor Boltzmann Inversion for angles

## Description

I've refactored the functional form classes for the Boltzmann Inversion to accept functions for calculating the mean and variance using dependency injection.

This means that we don't need different versions of the functional forms for angles - you just provide the circular functions when you define the functional form.  Has the side effect that the functional forms are no longer static classes, but that seems an acceptable loss.

Thoughts?

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `ada7d2a299cc`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.