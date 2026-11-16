# Issue

**Title:** Improve PR Ω constants

## Description

This PR changes the values of the Ωa and Ωb constants for the Peng-Robinson equation of state,to be accurate within `Float64` precision. Most of the pull request is just fixing the tests. Constants are taken directly from the cubic superancillary paper (https://doi.org/10.1021/acs.iecr.1c00847)

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `a3cd75fd6195`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.