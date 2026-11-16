# Issue

**Title:** fix(config): lower analysis num_processes default from 32 to 4

## Description

The `analysis` step runs its per-sample metrics through a ProcessPoolExecutor created with the "spawn" start method, so every worker re-imports the full dependency stack. At small N that fixed cost (~9 s) dominates the ~2.4 s of parallelizable per-sample work, and the shipped default of 32 is the worst all-rounder: it over-subscribes on small-N runs and is still below the optimum at production scale.

Measured `analysis` step wall time, single machine (40 physical cores), N = number of designs:

  N=4     nproc=1 15.4 s | nproc=4 22.9 s | nproc=32 23.9 s
  N=8     nproc=1 18.6 s |               | nproc=32 27.7 s
  N=16    nproc=1 21.2 s | nproc=4 28.8 s | nproc=32 38.8 s
  N=32    nproc=1 36.4 s | nproc=4 37.5 s | nproc=32 65.3 s
  N=64    nproc=1 61.0 s | nproc=4 53.2 s | nproc=32 78.0 s
  N=128   nproc=1 91.9 s | nproc=4 86.2 s

A four-arm control at N=4 (median of n=6, two independent batches) gives 23.64 s at num_processes=32 versus 14.96 s at 1 and 21.55 s for num_processes=32 with OMP_NUM_THREADS=1.

4 is the sweet spot for the main regime (20 < N < 200). Small-N interactive runs are still better served by num_processes=1, which remains available as a config override -- it just should not be the shipped default.

The large-N gains additionally require OMP_NUM_THREADS=1. Analyze calls torch.set_num_threads(1) in the parent process, but spawned workers do not inherit it: a worker reports torch.get_num_threads() == 40 unless OMP_NUM_THREADS=1 is exported. Fixing that properly means setting the thread count in the pool initializer and honouring OMP_NUM_THREADS per worker -- a separate, more invasive change deliberately left out here.

All measurements come from a single machine; worker import cost and BLAS behaviour are core-count dependent, so these values are a starting point rather than a universal optimum.

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `a3149cf18eeb`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.