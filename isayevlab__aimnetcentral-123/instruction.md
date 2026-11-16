# Issue

**Title:** refactor(lr): migrate PME Coulomb to energy+autograd

## Description

.

## Summary

Completes the #105 migration for PME: a single energy-only nvalchemiops call leaves positions, charges, and cell in the autograd graph, and every derivative (inference forces/stress, force/stress training losses, dense Hessians, HVPs) flows through the calculator's total-energy autograd.

The #106 blocker was an upstream composed-graph charge-gradient bug in nvalchemi-toolkit-ops 0.4.0. The 0.4.1 release reworked exactly the implicated machinery — the `charges.grad_fn`-based `_has_potentially_geometry_dependent_charges` heuristic (whose instability matches the issue's "charge-gradient edge sometimes `None`, sometimes valid" anomaly) was replaced by a deterministic `_dechain_connected_input_grads` pass that removes each dependent-input path exactly once. Verified with the calculator-level train-vs-eval force comparison from the issue (spiro crystal, `tests/data/2000054.cif`, single L40S):

| nvalchemiops | PME energy-graph route: max abs dF (train vs eval) | force elements off by >1e-3 |
| --- | --- | --- |
| 0.4.0 | 4.477 eV/A | 100% |
| 0.4.1 | 5.7e-6 eV/A | 0% |

Mean abs F is 3.75 eV/A on this system, so the 0.4.0 corruption averaged ~21% of the force magnitude — six orders above the ~1e-6 GPU noise floor — while total energies agreed to 1e-6 and Ewald through the identical code path was clean on both versions. With the bug fixed upstream, the issue's file-a-minimal-reproducer-upstream step is moot.

## Changes

- `aimnet/modules/lr.py`: PME joins the Ewald energy-graph branch. Removed the legacy explicit-terms path, the `_PeriodicCoulombFunction` training wrapper, `_periodic_coulomb_hybrid`, and the fixed-charge FD Hessian/HVP helpers; `ExternalDerivativeTerms` drops its now-unproduced `hessian` field.
- Runtime guard: selecting PME on nvalchemiops < 0.4.1 raises `RuntimeError` with the upgrade command. The pyproject pin only applies at install time; without the guard an already-installed 0.4.0 would corrupt training forces silently.
- `aimnet/calculators/calculator.py`: the `training_derivatives` flag is now DSF-only; the PME strain-input plumbing (`_external_strain_inputs`) is removed; the HVP drops the PME directional-FD block (PME joins the Ewald exact-autograd float64 contract; `eps` is retained but unused); stale docstrings rewritten.
- `aimnet/calculators/derivatives.py`: external-terms Hessian merge removed (no producer remains).
- `pyproject.toml`: `nvalchemi-toolkit-ops>=0.4.1`.
- Tests: legacy-path tests replaced with energy-graph equivalents parametrized over ewald+pme — module-level autograd-vs-FD force gate, autograd-Hessian-vs-force-FD gate, energy-in-graph contract spy, and version-guard tests. The pre-existing eval-vs-train, Hessian sum-rule, and HVP-vs-dense gates now cover PME's new path unchanged.
- Docs: `long_range.md` and `calculator.md` derivative-support sections rewritten (both also predated the #105 Ewald migration and still claimed `NotImplementedError` Hessians).

## Semantic change

PME dense Hessians and HVPs switch from fixed-charge finite difference to relaxed-charge autograd: they now include the `d^2E/(dq.dr)` charge-response coupling, matching DSF and Ewald, so vibrational frequencies / IR are comparable across all LR backends. Values shift slightly against the former FD numbers. This also retires the last upstream `DeprecationWarning` (deprecated direct-output flags).

## Note for existing environments

Environments with 0.4.0 already installed must `pip install -U nvalchemi-toolkit-ops` before selecting PME; the guard raises with that instruction until then.

## Review round

A final review pass over the finished diff surfaced and led to: the `uv.lock` regeneration (it still pinned 0.4.0 against the new `>=0.4.1` floor), several stale docstrings/comments describing the removed FD machinery, an honest rephrasing of cross-backend Hessian comparability (Ewald and PME are directly comparable; DSF still differs by its shifted-force truncation near the cutoff), disclosure of the dense-PME-Hessian dtype change (float64 FD block -> force dtype, matching Ewald since #105; the HVP keeps its documented float64 return), guard hardening (pre-releases of too-old versions such as `0.4.0rc1` are now refused; only truly unparsable versions pass), and an `eps` `DeprecationWarning` on `hessian_vector_product`.

## Testing

All in an nvalchemi-toolkit-ops 0.4.1 environment, serial on one L40S:

- Full suite: 700 passed / 4 skipped on the bulk, plus 127 (test_lr+test_pbc), 151 (test_calculator+test_hvp), and a final 210-test re-run of the two post-review-edited files — 0 failures.
- Slow `create_graph=True` gates run explicitly: `test_ewald_pme_hessian_finite_symmetric_sumrule[pme]`, `test_hvp_matches_dense_periodic[pme]`, `test_ewald_pme_hessian_consistent_with_forces[pme]`, `test_hvp_periodic_returns_float64[pme]`, `test_eval_matches_train_forces_and_stress[pme]`: pass.

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `1e17f991f4ad`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.