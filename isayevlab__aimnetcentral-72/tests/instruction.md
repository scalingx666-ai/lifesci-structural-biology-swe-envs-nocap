# Issue

**Title:** feat(kernels): vmap rules for conv_sv_2d_sp first/second backward

## Description

## Summary

PR A of the two-PR Hessian vectorization plan. Registers `torch.library.register_vmap` rules on the custom Warp ops `aimnet::conv_sv_2d_sp_bwd` and `aimnet::conv_sv_2d_sp_bwd_bwd` so that `torch.func.vmap` over a vjp closure can drive the second backward through the kernel without raising `Batching rule not implemented`.

The calculator's `calculate_hessian` is unchanged here (still the row-wise Python loop). The swap to vectorized form is PR B and depends on this rule landing first.

- Two `register_vmap` rules using a Python K-loop strategy (folding K into the kernel's existing leading dim was rejected because the kernels treat the LAST row as a single padding sentinel; stacking K copies would scatter padding rows).
- One kernel-direct vmap test in `tests/test_conv_sv_2d_sp.py` and one end-to-end test through `AIMNet2Calculator` on water in `tests/test_calculator_gpu.py`. End-to-end agreement vs. the loop hessian is ~3.81e-6 (5e-3 budget inherited from the existing internal/external Hessian regression).
- Plan documents updated to record an empirical dispatch-routing finding: `register_vmap` is consulted ONLY by `torch.func.vmap` (functorch dispatch). The legacy paths `is_grads_batched=True` and `autograd.functional.hessian(vectorize=True)` go through a different C++ batching dispatch and do NOT consult these rules. PR B's implementation must therefore use `torch.func.vmap` over a vjp closure.

## Test Plan

- [x] `pytest tests/test_conv_sv_2d_sp.py -v -m gpu` — 7 passed (incl. new `test_vmap_bwd_bwd_kernel_rule`)
- [x] `pytest tests/test_calculator_gpu.py -v -m gpu` — 15 passed (incl. new `TestVectorizedHessian::test_func_vmap_hessian_matches_internal`)
- [x] `pytest tests/test_calculator.py -v` — 68 passed, 1 pre-existing skip (loop-hessian regression unaffected)
- [x] `pytest tests/test_model_registry.py tests/test_hf_hub.py` — 14 passed (baseline gate)
- [x] No diff against `aimnet/calculators/calculator.py`, `aimnet/modules/aev.py`, or any wrapper (out-of-scope guard)

## Out of scope (PR B)

- Replacing the row-wise loop in `AIMNet2Calculator.calculate_hessian`. PR B owns the swap and the caffeine N=24 GPU benchmark target (~10× minimum, ~20–25× expected).
- Plumbing a `create_graph` knob through the calculator's forces path (today only `hessian=True` retains the graph).
- Optimizing the vmap rules beyond the K-loop (a fully-batched kernel that respects the padding sentinel is a possible follow-up).

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `685cf4ff6515`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.