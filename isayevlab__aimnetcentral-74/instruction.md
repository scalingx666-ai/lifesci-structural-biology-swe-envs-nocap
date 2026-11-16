# Issue

**Title:** feat(pysis): track A — wrapper improvements riding on vmap-Hessian

## Description

## Summary

Track A of the pysisyphus integration plan (`docs/superpowers/plans/2026-04-26-pysisyphus-integration-improvements.md`). Six small, independent commits cleaning up `AIMNet2Pysis` and engaging the now-cheap analytic Hessian (delivered by #73). All defaults unchanged for existing users; perf and correctness gates remain.

## Commits

1. **`deps: pin pysisyphus>=1.0.0`** — closes a contract gap. The wrapper's documented YAML keys (`hessian_init`, `hessian_recalc`) require pysisyphus ≥ 1.0.0; matches Sella's `>=2.4.0` discipline.
2. **`refactor(pysis): drop dead implemented_properties ClassVar`** — pysisyphus's `Calculator` does not consult this attribute (unlike ASE). Pre-flight `grep -r implemented_properties` confirmed no reflective consumers.
3. **`perf(pysis): premultiply coord on CPU and upload non-blocking`** — CPU-side `float64 → float32` cast and `BOHR2ANG` multiply before `to(device, non_blocking=True)`. Halves PCIe bandwidth and folds the unit conversion into the upload, eliminating one GPU kernel launch (~20 µs/call).
4. **`perf(pysis): result-level cache for get_energy/get_forces double-call`** — keyed on `(tuple(atoms), coord.tobytes())`. Saves a full model forward (~6.9 ms = 32%) when pysisyphus calls `get_energy` then `get_forces` at the same coord (AFIR / some IRC paths). Hessian path also primes the cache for any subsequent same-coord calls.
5. **`docs(pysis): YAML examples for geom-opt and TS using analytic Hessian`** — adds `opt: { hessian_init: calc, hessian_recalc: 5 }` and TS `tsopt: { type: rsprfo, hessian_init: calc, hessian_recalc: 3 }` examples to `docs/external/pysis.md`. Now safe to recommend after the vmap-Hessian PR landed in #73 (Hessian wall-time dropped from ~1,223 ms to ~189 ms on caffeine N=24). Also documents `force_num_hess: true` for FD validation.
6. **`test(pysis): water geom-opt + HCN TS smokes plus cache invalidation`** — new `tests/test_pysis.py` with `pytestmark = pytest.mark.pysis` and `pytest.importorskip("pysisyphus")` matching `tests/test_sella.py`. Four tests: water RFO geom-opt converges; HCN→CNH RSPRFO TS yields one negative eigenvalue; cache hits across `get_forces → get_energy`; cache invalidates on coord change.

## Test plan

- [x] `pytest tests/test_calculator.py -k "hessian or test_external" tests/test_ase.py::TestHessian` — 17/17 PASS (vmap-Hessian regression)
- [x] `pytest tests/test_model_registry.py tests/test_hf_hub.py` — green (baseline gate, run on main earlier)
- [x] `python -c "import ast; ast.parse(open('aimnet/calculators/aimnet2pysis.py').read())"` — syntax clean
- [x] `python -c "import ast; ast.parse(open('tests/test_pysis.py').read())"` — syntax clean
- [x] `uv run pre-commit run --all-files` — green
- [ ] (Reviewer manual) `pip install "aimnet[pysis]" && pytest tests/test_pysis.py -m pysis` against a real pysisyphus install — not in CI matrix

## Out of scope

- Console script removal / `run_pysis()` deprecation. Documented public interface; no upstream replacement is being pursued.
- `_prepare_input` argument signature changes. Internal-only refactors stay behind the existing call surface.
- Upstream pysisyphus PR (Track B in the plan) — separate workstream.

## Plan document

`docs/superpowers/plans/2026-04-26-pysisyphus-integration-improvements.md`

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `5a2a0006cfda`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.