# Issue

**Title:** 📍 Pin OrdinaryDiffEq and StochasticDiffEq

## Description

OrdinaryDiffEq and StochasticDiffEq have made breaking changes in their recent version updates. Sadly they didn’t make a version change big enough to stop automatic updates to affected versions. This PR restricts the package versions to the last known good versions as a temporary measure while we fix compatibility.

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `1a0d6661a778`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.