# Issue

**Title:** Sella saddle-point optimizer integration

## Description

## Summary

Adds first-class support for [Sella](https://github.com/zadorlab/sella) as a saddle-point / minimum optimizer for AIMNet2 by exposing the existing analytic Hessian through a new `AIMNet2ASE.get_hessian` method. Sella consumes any ASE `Calculator`, so no wrapper class is needed — the load-bearing change is making the analytic Hessian available as a Sella `hessian_function=` callback. Replacing Sella's iterative Davidson finite-difference loop with one analytic Hessian call (`O(3N)` backward passes through the AIMNet2 energy graph) was validated by [Schreiner et al. (Nat. Commun. 2024)](https://www.nature.com/articles/s41467-024-52481-5) to reduce TS optimization step counts by 2–3×.

### What ships

- **`AIMNet2ASE.get_hessian(atoms=None) -> ndarray (3N, 3N)`** in eV/Å² — designed for `Sella(atoms, hessian_function=atoms.calc.get_hessian)`. Gas-phase only; raises `PropertyNotImplementedError` for periodic input or when no atoms is attached/passed.
- **`pip install \"aimnet[sella]\"`** optional extra pinned to `sella>=2.4.0` (March 2026 release added MLIP-targeted vectorization that was load-bearing for usability — see ).
- **Tests**: 4 happy-path tests, 2 error-path tests, 1 cache-invalidation regression test in `TestHessian`; 2 Sella smoke tests gated by the new `pytest.mark.sella` marker (skip cleanly when Sella isn't installed).
- **Example**: `examples/sella_ts.py` — runnable TS-search demo with the analytic Hessian callback.
- **Docs**: new `docs/external/sella.md` with install, recommended config, rationale, limitations; nav and install-matrix updates in README, `docs/index.md`, `docs/external/index.md`, `mkdocs.yml`; back-link from `docs/advanced/reaction_paths.md`.
- **Cache fix (drive-by)**: `_t_numbers` invalidation in `AIMNet2ASE.update_tensors` and `get_hessian` now uses element-wise `torch.equal`, fixing a pre-existing same-N species-swap staleness bug that affected both `calculate()` and `get_hessian()`.

### Recommended usage

```python
import ase.io
from sella import Sella
from aimnet.calculators import AIMNet2ASE

atoms = ase.io.read(\"ts_guess.xyz\")
atoms.calc = AIMNet2ASE(\"aimnet2\")
dyn = Sella(
    atoms,
    order=1,
    internal=True,
    hessian_function=atoms.calc.get_hessian,
)
dyn.run(fmax=0.01)
```

## Deferred follow-up (separate PR)

Vectorizing `AIMNet2Calculator.calculate_hessian` (currently a Python loop of `3N` autograd backward calls at `aimnet/calculators/calculator.py:1135-1142`) would deliver ~20–25× speedup on caffeine but is blocked on the custom CUDA kernel `aimnet::conv_sv_2d_sp_bwd_bwd` (in `aimnet/kernels/conv_sv_2d_sp_wp.py`) lacking a `vmap` batching rule. All three vectorization strategies (`vectorize=True`, `is_grads_batched=True`, `torch.func.hessian`) hit the same kernel error. Two-PR follow-up: (1) register `register_vmap` on the kernel; (2) swap `calculate_hessian` to `torch.autograd.functional.hessian(..., vectorize=True)`. The existing regression at `tests/test_calculator.py::test_external_hessian_matches_internal` already proves the math is identical to the loop, so step (2) becomes a one-liner once step (1) lands.

## Plan document

Full implementation plan checked in at `docs/superpowers/plans/2026-04-26-sella-integration.md`.

## Test plan

- [x] `pytest tests/test_model_registry.py tests/test_hf_hub.py` — 14 passed (baseline gate)
- [x] `pytest tests/test_ase.py -m ase` — 35 passed (was 28 on \`main\`; +7 new in `TestHessian`)
- [x] `pytest --collect-only -m sella tests/` — \`sella\` marker registered, no \`PytestUnknownMarkWarning\`
- [x] `pytest tests/test_sella.py` — 2 collected, 2 skipped without Sella (gated by `pytest.importorskip`)
- [x] `python -c \"import ast; ast.parse(open('examples/sella_ts.py').read())\"` — syntax-clean
- [ ] (Reviewer manual) `pip install \"aimnet[sella]\" && pytest -m sella` against a real Sella install — not run in CI matrix

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `982b44bbea19`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.