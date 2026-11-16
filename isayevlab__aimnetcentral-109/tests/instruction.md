# Issue

**Title:** Remove the graph breaks that make torch.compile a net loss

## Description

`torch.compile` is currently slower than eager on every workload I measured, and the cause is that the model compiles to 42 graphs with 41 breaks — 137 of 144 breaks over five workloads are `Tensor.item()`. A compiled forward re-enters Python about 40 times, and the generated Triton kernels are individually slower than the ATen ones at these sizes, so compilation pays the overhead without ever getting the fusion.

Measured on an L40S, torch 2.9.1+cu128, full `calculator.eval(..., forces=True)`, arms interleaved round-robin in one process, min-of-100 (5 rounds x 20 reps), 4 warmup passes on the first round:

| workload | before | after |
|---|---|---|
| octane B=1 | 0.515x | **1.603x** |
| octane B=8 | 0.847x | **1.771x** |
| octane B=64 | 0.756x | **1.805x** |

On an idle GPU with one arm per process, min-of-25: before 10.99 -> 16.04 ms (0.69x); after 10.33 -> 5.46 ms (1.89x). Graphs 42 -> 4, breaks 41 -> 3. Process-wide over five workloads: frames 225 -> 23, graph breaks 144 -> 12 (all `torch.bincount`), recompile-limit hits 5 -> 0. Kernel launches at B=64 drop 735 -> 326. Cold compile for five workloads: 106 s -> 80 s.

**Eager is bit-for-bit identical.** Every change is gated on `torch.compiler.is_compiling()`. 81 arrays (4 models x 7 workloads x energy/forces/charges) on CPU with `OMP_NUM_THREADS=1`: max |dE|, |dF|, |dq| all exactly 0 against a 1e-9 tolerance. The mode flags stay in the `dict[str, Tensor]` as the eager source of truth, so the TorchScript and serialization contract is unchanged — every edited function still passes `torch.jit.script` (`calc_masks` did not script before this change either, for the reason below).

What changed:

- `nbops.infer_nb_mode` derives the mode from `nbmat`/`numbers` rank — the same definition `set_nb_mode` writes — so the compiled path stops reading `int(data["_nb_mode"].item())`, which ran 27 times per forward.
- `nbops.is_input_padded` returns True under compile. Exact for modes 1 and 2, which always reserve padding; for mode 0 it only means an all-false mask may be applied, and `masked_fill` with an all-false mask is the identity on values and gradients.
- `mol_sum` takes the molecule count from `data["charge"].shape[0]` instead of `int(idx[-1].item())`. That call sat inside a deliberate `is_compiling()` branch whose comment said dynamo handles it — it does, by breaking *and* by syncing device-to-host, since `mol_idx` is on the GPU. Removing this one sync was worth more than every mode flag combined: 11.8 ms -> 5.5 ms at B=64.
- `calc_masks` skips its `data_ptr()`-keyed dedup dict under compile. Dynamo cannot hash a `data_ptr()`, so it was raising an observed exception and **skipping the entire `forward` frame** rather than breaking the graph — 22 compiled frames instead of 9 at B=1. This is also why `calc_masks` was never TorchScript-scriptable.
- `ops.nse` uses the `index_select` gather already sitting next to it instead of `repeat_interleave`, whose output shape is data-dependent.

Two things I expected to matter and measured as not mattering, left alone deliberately: `charges_pre`'s stride alternates (258 from a `.split()` view on pass 0, 1 from a fresh sum after), and `data["charge"]`'s rank alternates 2 then 1 via an internal unsqueeze/squeeze round trip. Both are real, and both only became guarded values because 41 graph breaks made them cross-graph boundaries. Recompiles were 0 before and after. With 4 graphs neither is a boundary, and `charges_pre` is write-only in the whole library — nothing reads it. Adding a `.contiguous()` would have been a fix to a symptom that no longer exists, at a small eager cost.

**A silent inductor miscompile, worth reporting upstream.** Removing the `mol_sum` break let inductor fuse a `scatter_add_` with a downstream gather, and the compiled single-molecule forward returned E = 2.88e21 eV with charges of 4.3e5 — no error, no NaN. Minimal repro:

```python
def f(x, idx, n_out):
    res = torch.zeros(n_out, x.shape[1], device=x.device, dtype=x.dtype)
    res.scatter_add_(0, idx.unsqueeze(-1).expand(-1, x.shape[1]), x)
    res = res + 1.0e-6
    return torch.index_select(res, 0, idx)
```

`torch.compile(f)` against eager on torch 2.9.1+cu128 / L40S gives max |diff| = 2.7 at `n_out=1`, and is correct at 2, 3, 4 and 64. It fires only when the scatter's leading dimension is size 1 and the result is gathered from in the same graph; `index_add_`, out-of-place `index_add`, `.clone()` and `res[idx]` all fail identically, so it is not a mutation-form issue. Worked around here in two compile-gated places: `mol_sum` sums rather than scatters at `out_size == 1`, and `nse` broadcasts rather than gathers for one molecule — `index_select`'s backward is itself a size-1 scatter, and fixing only the forward left forces wrong by 8 eV/A. `test_nse_compiled_matches_eager[1]` fails by 100% on the gradient with that guard removed.

This is the largest risk in the change. If the inductor bug turns out to be broader than "size-1 leading dim gathered in the same graph", these workarounds are patches on a symptom, and the safe fallback is restoring the protective break in `mol_sum` — which costs the entire win.

**The CPU backend keeps the protective break.** CI caught a second member of the same bug family: on the CPU backend through torch 2.10, inductor fuses the `atomic_add` scatters of the PBC distance backward with a dependent pointwise, and `CppScheduling.try_loop_split` fails loudly on the fused group with a degenerate loop split (`AssertionError: expected_var_ranges == extra_indexing_ranges`, `test_torch_compile_pbc_forces`). Both manifestations — the silent CUDA miscompile above and this CPU assertion — are outlawed by the same upstream fusion-legality rule, pytorch/pytorch#172301, first released in 2.11: verified failing identically on CPU with 2.8/2.9.1/2.10 and passing on 2.11/2.12. The fix gates the compiled charge-shape fast path in `mol_sum` to non-CPU tensors, so CPU keeps the `.item()` break — free there, since `.item()` on a CPU tensor syncs nothing — and the graph partitioning that never forms the fused group. Measured wins above are CUDA, where nothing changes on any version. The gate drops when the supported torch floor reaches 2.11.

Compiled-vs-eager fidelity is unchanged by this PR: worst relative force error over 2 models x 5 workloads goes 2.07e-5 -> 1.80e-5, absolute worst 1.6e-4 eV/A on forces of magnitude 16 eV/A. That is fp32 reassociation from different fusion, not a semantic change.

`tests/test_compile_paths.py` adds 12 tests: `infer_nb_mode` equivalent to `set_nb_mode`, `is_input_padded` equivalent to the flag, and compiled-vs-eager parity for `mol_sum` and `ops.nse` including gradients at n_mol in {1, 2, 3, 5}.

Test status: 620 passed, 10 failed. All 10 failures reproduce on clean `main` at 6550e0c and are one upstream cause — `RuntimeError: Trying to backward through alchemiops._batch_ewald_real_space_energy_matrix_backward.default but no autograd formula was registered`, i.e. any second derivative through the Ewald real-space term. Unrelated to this branch.

Two limits worth stating. Only nb_mode 1 was exercised end-to-end, because that is what `AIMNet2Calculator` produces; modes 0 and 2 have unit coverage but no compiled full-model run, and `is_input_padded` returning True under compile is provably the identity for mode 0 rather than empirically confirmed. And `torch.bincount` in `calc_masks` is the last remaining break on CUDA (`mol_sum` keeps one more on CPU, see above) — a statically-sized scatter would remove it, but that creates exactly the size-1 scatter shape inductor miscompiles, so I left it.

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `6550e0c72d34`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.