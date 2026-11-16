# Issue

**Title:** Fix CUDA error 700 (illegal address) in gpu_batch mode

## Description

## Summary
- : CUDA error 700 (cudaErrorIllegalAddress) during gpu_batch mode

**Root cause**: `cudaMemset(&ig_cuda_gpu, 0, ...)` at monte_carlo.cu:1481 passes the address of the local pointer variable (on CPU stack) instead of the GPU buffer pointer. This corrupts the `ig_cuda_gpu` pointer, causing all subsequent GPU memory accesses to hit illegal addresses.

The correct pattern `cudaMemsetAsync(ig_cuda_gpu, 0, ...)` is used at line 687 for the same purpose. This is a one-character fix removing the erroneous `&`.

### Why it manifests on second+ batches
The first batch may succeed because the corrupted pointer happens to still partially overlap valid GPU memory. By the second batch, the pointer is garbage → illegal address at cudaDeviceSynchronize.

## Test plan
- [ ] Build with CUDA and verify compilation
- [ ] Run gpu_batch with multiple batches → should complete without CUDA error 700

🤖 Generated with [Claude Code](https://claude.com/claude-code)

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `c0aba05e6720`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.