# Issue

**Title:** chore: add make clean target for run artifacts and tool caches

## Description

Adds a `clean` Makefile target that removes local run artifacts (pysisyphus/optimizer logs, Hessian h5 dumps, qm_calcs) and tool caches, building on `clean-build`. `_tmp/` is intentionally excluded — it holds local model artifacts. No tracked-file changes beyond the Makefile.

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `9a6c56440349`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.