# Issue

**Title:** fix(kernels): bitwise-reproducible packed-layout forces with deterministic=True

## Description

(the remaining forces part; packed energies were fixed in #145).

With `deterministic=True` and `torch.use_deterministic_algorithms(True)`, packed-layout forces on CUDA are now bitwise identical across repeated runs, as energies already were. This includes periodic inputs and forces with `train=True`. Default behavior is unchanged.

## Cause and fix

- The only remaining source of run-to-run noise was `_conv_sv_2d_sp_backward_a_kernel`, which accumulates atom gradients with atomic adds. It is used in the first backward and for one term of the double backward.
- New ops `aimnet::conv_sv_2d_sp_det_{fwd,bwd,bwd_bwd}` replace it with a gather kernel. Each output element sums its contributions in a fixed order through a CSR transpose of `nbmat`, built by `conv_sv_2d_sp_transpose()` with a stable sort. Each transpose row ends at the row's first padding sentinel, exactly as the forward reads it.
- The existing ops keep their schemas and kernels, so the default path is untouched; a profiler test checks that it never dispatches the new ops. The new ops have fake (meta) and autograd registrations, plus vmap rules.
- The calculator builds the transpose only with `deterministic=True`, on CUDA, and only for calls that can run a backward (forces, stress, `train=True`, or inputs that require grad). It passes the transpose through hidden data keys, which are stripped from outputs. The Hessian paths keep the atomic ops.
- The calculator still never sets `torch.use_deterministic_algorithms` itself. The flag remains necessary for the per-molecule `scatter_add_` sums and the neighbor `index_select` backward; the one-time warning and the docs now say exactly that.

## Validation (L40S)

- **Repeat runs:** the strict xfail `test_packed_layout_forces_bitwise_reproducible` from #142 now passes, and its xfail marker is removed. In separate probes:

  | System | Identical repeats |
  |---|---|
  | taxol | 29/29 |
  | periodic crystal | 9/9 |
  | batch of 4 taxol | 9/9 |

  With the atomic backward, none of the repeats were identical.
- **Agreement with the atomic backward:** to float32 tolerance, including interleaved padding, repeated neighbors and generalized layouts. `torch.library.opcheck` passes for all three ops.
- **`compile_model=True`** with `deterministic=True` dispatches the new ops, and its forces repeat bitwise.
- **Default path:** CPU energies and forces are bitwise identical to `main`. On GPU, differences stay within `main`'s own run-to-run noise.
- **Cost:** in an MD-style loop with forces at every step, the deterministic backward adds 1–2% per step at 113 and 1008 atoms; building the transpose takes about 0.3 ms. PyTorch's deterministic mode itself remains the dominant cost: it makes the force backward 3.5–6× slower, mostly in `index_put_`. Replacing those reductions with CSR segment sums is the natural next step and would reuse this transpose.
- **Tests:**
  - all GPU tests: 426 passed;
  - default run: 1221 passed in about 50 s;
  - ruff is clean, and mypy is unchanged from `main`.

## Not covered (documented)

- caller-supplied batched `(B, N, M)` neighbor matrices (mode 2);
- legacy `.jpt` models;
- Hessians (#143);
- parameter gradients with `train=True`: in testing they matched from the third call on, on both the dense and packed layouts, so this is a warm-up effect unrelated to this change.

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `a42b7c08de7e`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.