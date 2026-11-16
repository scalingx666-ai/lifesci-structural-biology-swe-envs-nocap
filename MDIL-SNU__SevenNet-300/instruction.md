# Issue

**Title:** Batch D3 and SevenNetD3Model for Torch-Sim interface

## Description

Batch D3  is implemented.

**How it works**
- It flatten all input first (escaping pointer-to-pointer-to-pointer...), launch all kernels once, then unflatten
- Mixed precision within one batch works
- TorchSim - SevenNetD3Model can use both serial and batch D3, where the default threshold batchsize = 4
(heuristic, but I found some evidences that current batch D3 is also faster than serial D3 when the system size is smaller than 1k. Also, in very large cell, it slows down than serial D3. So I think better criterion for choosing serial/batch should consider the system size, but ...)

**Precision**
- Batch D3's precision policy is FP32+64 (same with serial D3) but it utilizes [Kahan summation](https://en.wikipedia.org/wiki/Kahan_summation_algorithm) inside each thread. It greatly diminishes precision-related rounding error in pairwise dispersion energy, approaching the reference FP64 fortran-dftd3 values within (|ΔE,F| < 1e-7, |ΔS| < 3e-7 in ase units)
- The above difference in summation makes the output energy of batch D3 kernel slightly different with serial D3.
- Applying Kahan summation also in serial D3 can nearly remove this discrepancy between serial/batch (|ΔE,F,S| < 1e-7 in ase units), but I think this should be addressed in a separate conversation. (since it breaks backward compatibility of calculation results)

- [x] code review @dambi3613
- [x] Float64 wrapper for double-precision MD computation flow
- [x] speed benchmark (especially, check `nvalchemiops_dftd3`) -> done, found custom batch D3 implementation is still valuable
- [x] test scripts
- [x] replace SevenNetD3Model with batched D3 version then remove `torchsim_d3.py`
- [x] overflow issues (only applied for batched D3, not serial D3)
- [x] Doc

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `05e58c415c86`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.