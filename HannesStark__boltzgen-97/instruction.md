# Issue

**Title:** Clamp analyze worker thread pools to prevent oversubscribing

## Description

Increasing `--config analysis num_processes` does not always result in speedup for the analysis step and sometimes results in a slowdown, even when well below the number of CPUs. On a machine with 256 CPUs, going from `num_processes=32` to `num_processes=128` resulted in a ~2x slowdown in analysis time.

I think this is caused by MKL defaulting to 8 threads within each process, oversubscribing the host. This PR sets the number of threads within each process to 1 to prevent oversubscription.

In my test, this took the time to analyze 60k designs from ~24h to ~2h.

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `e22556a0995e`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.