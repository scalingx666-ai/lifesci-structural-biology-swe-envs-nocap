# Issue

**Title:** Support PyTorch 2.8–2.12

## Description

## Summary

Make `aimnet` verifiably support PyTorch 2.8–2.12, remove latent deprecations, and document the supported range.

### Phase 1 — Probe the range (CPU)
- New `tests-torch` CI job runs the core suite against torch **2.8 / 2.9 / 2.10 / 2.11 / 2.12** (CPU wheels reinstalled over the locked deps; `UV_NO_SYNC` keeps the override from being reverted by `uv run`). Scoped as a **torch-core API + CPU-numerics drift probe** — not a dependency-graph test (warp-lang/nvalchemiops do not pin torch and CI is CPU-only). `torch.compile`/inductor is disabled in this job (`TORCHDYNAMO_DISABLE=1`): reinstalling torch alone leaves a mismatched `triton` (the inductor path otherwise fails with a `triton_key` ImportError on 2.8), so the compile/triton stack can only be validated in a resolver-coherent env.
- `tests/test_kernel_registration.py` — asserts the `aimnet::conv_sv_2d_sp_*` custom ops register on a CPU runner (guards `torch.library` schema-inference drift).
- `tests/test_torch_version_numerics.py` — cross-version determinism guard for `calc_distances` (rel-tolerance) + a TF32 behavioral assertion.

### Phase 2 — Remove latent deprecations (with regression tests)
- `enable_tf32` now uses `torch.set_float32_matmul_precision` (the `allow_tf32` booleans are its deprecated alias from 2.9).
- Trainer `torch.load(..., weights_only=True)` made explicit + round-trip test.
- `torch.norm(p=2)` → `torch.linalg.vector_norm(ord=2)` on the distance path (verified value- and gradient-identical, incl. the r=0 subgradient).
- Verified the custom ops return freshly allocated tensors (torch 2.9+ no-alias rule) — no change needed.

### Phase 3 — Document; promote
- `tests-torch` added to `deploy-docs.needs` (required check).
- Getting-started note on the tested PyTorch range and the CUDA-13 wheel caveat.

### Follow-ups (out of scope here)
- GPU validation of the warp-lang/nvalchemiops-vs-torch coupling + a full-model energy/force golden across system sizes (the CPU matrix structurally cannot cover this).
- No torch upper cap added (deliberate, for a library); revisit only if a released 2.13 shows a confirmed break.

## Test plan
- All CI green: `quality`, `tests-core` (3.11/3.13), `tests-ase/hf/pysis/sella/train/torchsim`, and all five `tests-torch` legs (2.8–2.12).
- Full CPU core selection locally: 220 passed, 1 skipped.

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `a527b6c396de`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.