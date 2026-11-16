# Issue

**Title:** Fix Nose-Hoover chain update for a single thermostat

## Description

.

With `chain_length=1` (`M = 0`), `nose_hoover_chain`'s substep still applied the coupling to a next chain element:

- `p_xi[M] += delta_4 * (p_xi[M - 1]**2 / Q[M - 1] - kT)` reads `p_xi[-1]`, i.e. `p_xi[0]` itself;
- `scale = exp(-delta_8 * p_xi[1] / Q[1])` reads out of bounds, and JAX clamps the index to `p_xi[0]` instead of raising.

So the thermostat silently deviated from the original Nose-Hoover equations. This PR skips both chain-coupling terms when there is a single thermostat (`M` is a static Python int, so longer chains trace exactly the same code as before). The rest of the substep already reduces correctly: the backward/forward scans are empty and the final `p_xi[M]` update uses `2 KE - DOF kT`.

### Evidence

Relative drift of `nvt_nose_hoover_invariant` after 800 steps (64 bonded particles in 2D, float64, `dt=1e-3`, `kT=0.8`), over 4 seeds:

| | `chain_length=1` | `chain_length=3` |
|---|---|---|
| before | 5e-6 to 6e-4 | 1e-8 to 9e-8 |
| after | 7e-9 to 1.5e-7 | unchanged |

### Tests

- Added `test_nvt_nose_hoover_single_thermostat`, which checks the invariant with `rtol=1e-6`. It fails on `main` and passes with this change (it needs `JAX_ENABLE_X64=1` and is skipped otherwise).
- `JAX_ENABLE_X64=1 pytest tests/simulate_test.py -k nose_hoover`: 34 passed, 1 failed. The failure, `test_npt_nose_hoover_lammps_dtype=float32`, also fails on `main` without this change.
- `ruff check`, `ruff format --check` and `ty check --error-on-warning` pass.

Note: I had to install `flax 0.12.10` locally to import the package with jax 0.11.2 ( / the companion PR).

## Checklist

- [x] Tests added/updated and passing
- [ ] Appropriate labels added to PR

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `3191df4b6494`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.