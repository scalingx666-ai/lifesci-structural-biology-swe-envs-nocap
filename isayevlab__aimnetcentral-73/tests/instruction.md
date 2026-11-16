# Issue

**Title:** perf(calculator): vectorize calculate_hessian via torch.func.vmap

## Description

## Summary

PR B of the two-PR Hessian vectorization plan. Replaces the row-wise Python loop in `AIMNet2Calculator.calculate_hessian` (`aimnet/calculators/calculator.py:1135-1142`) with a `torch.func.vmap`-over-vjp closure. Drops caffeine N=24 GPU Hessian wall-time from ~1,223 ms to ~189 ms — **6.5× warm-state speedup** — using the `register_vmap` rules on `aimnet::conv_sv_2d_sp_bwd` / `aimnet::conv_sv_2d_sp_bwd_bwd` that landed in PR A (#72).

## Why `torch.func.vmap`-over-vjp, not `is_grads_batched=True` or `autograd.functional.hessian(vectorize=True)`

Empirically verified during PR A development: `torch.library.register_vmap` is consulted ONLY by the new functorch dispatch (`torch.func.vmap`, alias `torch.vmap`). The legacy batching dispatch used by `is_grads_batched=True` and by `autograd.functional.hessian(vectorize=True)` does NOT consult these rules and would still raise `Batching rule not implemented for aimnet::conv_sv_2d_sp_bwd_bwd`. The vjp-closure form is the only one that exercises our rules. See `docs/superpowers/plans/2026-04-26-vectorize-calculate-hessian-pr-a-vmap-rule.md` for the full dispatch-routing analysis.

## Benchmark (caffeine N=24, single A100, float32, warm)

| Path | ms/call | Speedup |
|---|---|---|
| Forces only (reference) | 15.62 | — |
| Hessian, row-wise loop (before) | 1,223.03 | 1× |
| Hessian, `torch.func.vmap` (this PR) | 189.41 | **6.5×** |

Below the parent plan's aspirational 10-25× target — the K-loop strategy in our `register_vmap` rules (chosen over fold-K-into-B because of the kernel's padding-row sentinel) caps the win. Each `bwd_bwd` invocation still launches ~K Warp kernels serially. A future fully-batched kernel could close the gap to the ~50 ms ideal but is out of scope here.

## Test plan

- [x] `pytest tests/test_calculator.py -k hessian -v` — 6/6 PASS (correctness regression: `test_external_hessian_matches_internal` compares against `torch.autograd.functional.hessian`, agreement within 5e-3)
- [x] `pytest tests/test_ase.py::TestHessian -v` — 10/10 PASS (Sella callback path)
- [x] `pytest tests/test_calculator_gpu.py tests/test_conv_sv_2d_sp.py -m gpu` — 23/23 PASS (vmap rule + e2e through `AIMNet2Calculator`)
- [x] `pytest tests/test_model_registry.py tests/test_hf_hub.py` — 14/14 PASS (baseline gate)
- [x] Caffeine N=24 GPU benchmark: 1,223 → 189 ms (6.5× warm)

## What this unlocks

- `AIMNet2ASE.get_hessian` (Sella callback) becomes 6.5× cheaper; analytic-Hessian Sella TS searches viable for moderate-sized systems on a single GPU.
- `AIMNet2Pysis.get_hessian` benefits identically; faster IRC and pysisyphus TS — and unblocks the `hessian_init=calc` recommendation in the pysisyphus integration plan (`docs/superpowers/plans/2026-04-26-pysisyphus-integration-improvements.md`), which was net-negative under the loop.
- The OOM-warning threshold in `AIMNet2ASE.get_hessian` (currently `len(atoms) > 100`) can be revisited — the vectorized backward holds less peak memory than 3N row-wise traversals.

## Out of scope

- Public Hessian shape contract is unchanged: `(N, 3, N, 3)` Cartesian eV/Å². Wrapper code in `aimnet2ase.py` and `aimnet2pysis.py` stays unchanged.
- PBC Hessian. Still rejected at the wrapper.
- Multi-molecule batched Hessian. Still rejected at `aimnet/calculators/calculator.py:838-839`.

## Plan documents

- Parent: `docs/superpowers/plans/2026-04-26-vectorize-calculate-hessian.md`
- PR A (kernel vmap rules, merged in #72): `docs/superpowers/plans/2026-04-26-vectorize-calculate-hessian-pr-a-vmap-rule.md`

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `6631e2302fe2`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.