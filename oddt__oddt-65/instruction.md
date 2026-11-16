# Issue

**Title:** Rewrite VS pipelines to use chunks

## Description

VS pipelines will move `chunksize` of molecules at a time. The idea is to lower cost of pickling objects for every molecule. Finally we should have at best `n_cpus * chunksize` molecules in memory.
Missing bits:

- [x] make executing loop in `fetch()` method lazy
- [x] ensure that there is max `n_cpus * chunksize` molecules in memory
- [x] introduce chunksize to `oddt_cli`

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `967a87f1a7a8`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.