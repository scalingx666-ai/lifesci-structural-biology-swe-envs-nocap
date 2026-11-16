# Issue

**Title:** fix: address code review findings across calculator, ops, and packaging

## Description

## Summary

Fixes ten findings from a full-codebase review, spanning two silent-behavior traps in the calculator, GPU hot-path syncs, a float64 dispatch gap, the model serialization ABI, and packaging hygiene.

### Calculator behavior
- **`mult` is no longer silently ignored**: closed-shell (1-channel) models now warn once per calculator instance when `mult != 1` is passed (the ASE/pysisyphus/torch-sim wrappers pass it unconditionally, so an open-shell request used to return a closed-shell result with no signal).
- **The automatic `simple`->`dsf` Coulomb switch is now scoped to the periodic evaluation** and restored in a `finally` block, so one PBC call no longer permanently flips a gas-phase calculator off its trained full Coulomb. Explicit `set_lrcoulomb_method()` remains persistent, and the DSF-side adaptive neighbor lists are memoized so periodic MD keeps them warm.
- **Species validation is cached on `numbers` tensor identity** (id/data_ptr/`_version` plus a weakref guard), removing a per-step device-to-host `tolist()` from MD/optimization loops. Charge validation still runs every call.

### Hot-path syncs (packed mode 1, the MD/PBC path)
- `mol_sum` reads a molecule count cached by `calc_masks` as a CPU tensor (same pattern as `_nb_mode`) instead of syncing on `mol_idx[-1].item()` several times per message-passing pass.
- `nse` broadcasts per-molecule values with a `mol_idx` gather instead of `repeat_interleave` over an in-place-mutated `mol_sizes`. Verified bit-identical on CPU; the CUDA difference equals the pre-existing `scatter_add_` nondeterminism baseline. `torch.cuda.set_sync_debug_mode("error")` confirms both now run sync-free.
- Compiled graphs keep the original formulations behind `torch.compiler.is_compiling()`: the new gather/scatter fusion trips an inductor CPU codegen assertion (caught by `TestTorchCompile` during the gate), so `torch.compile` behavior is unchanged from main while eager gets the sync-free path.

### Kernels
- `ConvSV` now gates the Warp kernel on both operands being float32, so float64 (and mixed-dtype) CUDA inputs fall back to the einsum path instead of raising. GPU fp64 fallback matches CPU fp64 to 2e-13.
- The packed-padding contract the `conv_sv_2d_sp` kernels rely on (padding sentinels contiguous at the row end, per nvalchemiops `neighbor_list`) is documented at each early-`break` site and in the op docstring.

### Serialization ABI
- New `tests/test_serialization_abi.py` (61 tests) pins the fully qualified class paths embedded in released `.pt` model files: every `class:`/factory path in shipped YAMLs and in the six bundled model artifacts must resolve, and a frozen-names list makes renames in `aimnet.models`/`aimnet.modules` a conscious ABI-break decision. Released artifacts embed both `aimnet.models.AIMNet2` and `aimnet.models.aimnet2.AIMNet2` spellings; both are pinned. Documented in `docs/api/index.md`.

### Packaging
- Wheel data files (model YAMLs, registry, `dftd3_data.pt`) ship via include globs instead of hand-enumerated `force-include` entries, so a new YAML can no longer be silently dropped from wheels. Verified by before/after wheel file-list diff (identical data set; the gitignored download cache stays excluded).
- Removed the empty `aimnet.interfaces` package (docstring-only, zero references; the real adapters live in `aimnet.calculators`).

## Testing
- Full CPU gate (`-m "not gpu and not network"`, CUDA hidden): 474 passed at the pre-compile-fix state; the compile fix only changes `torch.compile`d paths and `TestTorchCompile` now passes 5/5 (+1 skip).
- Full GPU suite (`-m gpu` on an L40S): 116 passed.
- Targeted after the compile fix: `test_nbops`+`test_ops`+`test_calculator` 174 passed; `test_calculator_gpu`+`test_conv_sv_2d_sp` 31 passed; PBC compile tests 2 passed; TorchScript compilation of `mol_sum`/`nse` verified.
- `ruff check` and `ruff format --check` clean.

Note: `test_static_cache_reuses_dftd3_terms_for_same_resident_tensors` flaked once during a full `-m gpu` run but passes in isolation and on identical-order reruns, on both this branch and main - it looks like a pre-existing flake in the identity-keyed static cache from #84, not something this change introduces.

## Deferred follow-ups
- Dipole origin-dependence for net-charged systems (`center_coord=False` in the released rxn YAML) - needs a release decision since changing it alters published model outputs.
- Centralizing family policy (currently split across `model_registry.py`, `calculator.py`, `hf_hub.py` with three string conventions) as per-family data in `model_registry.yaml`.

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `e0184258e31b`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.