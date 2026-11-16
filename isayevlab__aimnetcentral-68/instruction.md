# Issue

**Title:** fix(calculator): detect embedded D3TS via explicit metadata flag

## Description

## Summary

Fixes the bug @k-s-n reported in #48: `AIMNet2Calculator._has_embedded_dispersion()` returns `False` for v2 `.pt` files that have **both** embedded D3TS dispersion AND embedded SRCoulomb (`has_embedded_lr=True` AND `coulomb_mode='sr_embedded'`). The calculator then skips building the long-range neighbor list and `D3TS.forward()` later raises `KeyError('No neighbor matrix found for any suffix in [\"_dftd3\", \"_lr\"]')`.

## Why a different fix from #48

PR #48 introduces a `for m in self.model.modules(): m.__class__.__name__ == \"D3TS\"` runtime check on every `eval()` call. That works but:

- O(modules) iteration on every inference call (called from `_run_external_modules`).
- Brittle string match on `__class__.__name__` (no FQN; doesn't survive a class rename).
- Leaves the previous function as a 22-line commented-out block (which is what failed the `quality` CI check on #48).

This PR uses the same metadata-driven pattern just landed for `family` / `supports_charged_systems` (#66): add an explicit `has_embedded_d3ts: bool` to `ModelMetadata`, populate it at conversion time from the local variable that `load_v1_model` already computes (line 711), and read it directly in `_has_embedded_dispersion`. O(1) per call, no introspection, no fragile string match.

## Changes

| File | Change |
|---|---|
| `aimnet/models/base.py` | Add `has_embedded_d3ts: NotRequired[bool]` to `ModelMetadata`; propagate in `load_model` |
| `aimnet/calculators/hf_hub.py` | Propagate in `load_from_hf_repo` |
| `aimnet/models/utils.py` | Write `has_embedded_d3ts` to metadata in `load_v1_model` (one-line addition; the local was already there) |
| `aimnet/calculators/calculator.py` | `_has_embedded_dispersion` reads the explicit flag first; legacy heuristic kept only as fallback for pre-flag `.pt` files |
| `tests/test_calculator.py` | Two regression tests (the both-set case + back-compat for legacy `.pt`) |

## Backward compatibility

Existing `.pt` files in the registry that don't carry `has_embedded_d3ts` continue to behave as before — the legacy heuristic stays as a fallback. No regression on the standard `aimnet2_wb97m_d3` family (uses externalized DFTD3, never affected). The bug bites custom models exported from `aimnet2_dftd3_wb97m.yaml`-shaped configs (D3TS + SRCoulomb both embedded). For those, re-conversion against this PR will set the flag correctly.

## Test plan

- [x] `test_has_embedded_dispersion_explicit_d3ts_flag` — synthesizes the both-set metadata combo from #48 and asserts the function returns `True`.
- [x] `test_has_embedded_dispersion_legacy_heuristic_fallback` — verifies pre-flag `.pt` files (no `has_embedded_d3ts` key) still detect D3TS-only models via the heuristic.
- [x] All previously-added metadata tests still pass (family / supports_charged_systems / type_dict propagation).
- [x] `ruff check` + `ruff format` + `prettier` all clean (no `quality` CI failure expected).

## Credit

Bug reported by @k-s-n in #48. Closing #48 in favor of this PR.

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `a74fc16abee7`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.