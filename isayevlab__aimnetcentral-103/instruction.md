# Issue

**Title:** chore: harden make test against GPU OOM and CPU thread oversubscription

## Description

Two measured failure modes of `pytest -n auto` on this codebase: on a CUDA box every xdist worker auto-selects cuda:0 and stacks models onto it until OOM (reproduced: 185 failures, all torch.OutOfMemoryError); with CUDA hidden, each worker spawns a full torch thread pool and a 3-file run took 92 minutes of wall time from core thrashing.

Fix: `make test` now runs with `CUDA_VISIBLE_DEVICES="" OMP_NUM_THREADS=1` — measured full parallel CPU suite: 434 passed in 2:44 (52 min of user time spread across cores). A new `make test-gpu` target runs the gpu-marked tests serially with CUDA visible, which is the fastest safe configuration measured for them.

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `3048ae819c28`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.