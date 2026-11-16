# Issue

**Title:** Restructure prediction writing

## Description

- All predictions are written to the same file `results.tsv`
- Predictions are not accumulated in memory anymore - decreased RAM requirements ()
- Added `except` statement for failing alignments #53
- Code refractor

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `e35cdf9ea5ac`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.