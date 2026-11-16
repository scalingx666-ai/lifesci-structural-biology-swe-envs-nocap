# Issue

**Title:** Resolving torch cuda availability for cpu-only installation

## Description

Dear OpenFold developers,

We encountered a `TypeError: expected string or bytes-like object` error in `setup.py, line 111` when running pip install on a cpu-only machine. The current `setup.py` resolves CPU/GPU environments based on CUDA_HOME, but for cpu installations of pytorch (v1.13.1) this variable is set to `'/usr/local/cuda'` by default. This caused pip install to proceed to compiling the cuda kernels.

Here is a hotfix that ensures installing the cpu version when no cuda build of pytorch is detected.

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `b2d6bff691e0`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.