# Issue

**Title:** Feature/nuisance

## Description

@drussel
Is this change ok? Central piece is `Nuisance::enforce_bounds` and `Nuisance::remove_bounds`. In particular, I'm afraid that if the Particle is destroyed while some bounds are set, the scorestate won't be, unless someone call remove_bounds. I was thinking of using a scoped_ptr for that scorestate, but I wasn't sure.

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `59e9a5624fc7`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.