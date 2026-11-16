# Issue

**Title:** feat(calculator): add deterministic mode for reproducible batched evaluations

## Description

Adds `AIMNet2Calculator(..., deterministic=True)`: routes external DFT-D3 and DSF Coulomb through their existing differentiable pure-torch paths (`_compute_energy_torch`, `_coul_dsf_torch`) instead of the atomics-based nvalchemiops CUDA kernels, whose accumulation order varies run to run (#93, upstream: NVIDIA/nvalchemi-toolkit-ops#135). Forces then come from the main autograd pass.

With the flag, repeated identical evaluations are bitwise reproducible on the same machine/build — verified by a new gpu-marked test (B=8, six repeats, `torch.equal` on energies and forces). Measured cost at B=32x24 atoms: 19.9 vs 19.5 ms/eval (indistinguishable); the torch paths scale worse on very large single systems, hence opt-in rather than default. Ewald/PME kernels are not covered and emit a one-time warning; the static DFTD3 cache does not apply in this mode.

Implementation is wiring-only: the flag extends the existing `dftd3_energy_graph` and `training_derivatives` conditions in `_run_external_modules` — no new numerics code.

Verification: default suite 437 passed, GPU suite 117 passed, docs build clean, A/B harness bit-identical to main (1e-10) on the default path. New tests: bitwise reproducibility (gpu), deterministic-vs-default numerics agreement (CPU, 1e-6/1e-5), Ewald warning.

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `5dcc103936cc`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.