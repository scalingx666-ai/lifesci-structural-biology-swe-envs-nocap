# Issue

**Title:** Seed the ASE RNG in VelocityVerlet, Langevin and Bussi

## Description

## Summary
- RNG use in the ASE integrators was unseedable: `Rotation.random()`, `np.random.rand()` and `np.random.randn()` all drew from numpy's global random state, unlike the i-PI path which already draws from `motion.prng` (a seeded, per-simulation PRNG).
- `VelocityVerlet` (and its `Langevin`/`Bussi` subclasses) now accept an optional `rng` argument, following the same convention as `ase.md.langevin.Langevin` (defaults to the `np.random` module for backward compatibility when omitted).
- `_get_random_rotation` and the Langevin/Bussi noise draws now use `self.rng` instead of numpy's global functions.

## Test plan
- [x] `pytest tests/test_edge_cases.py tests/test_symplectic.py tests/test_energy.py` (against this worktree's source) — all pass
- [x] Manual check: running `Langevin` with `random_rotation=True` and the same `np.random.default_rng(seed)` twice gives bit-identical momenta trajectories; a different seed diverges
- [x] `ruff check` / `ruff format --check` on changed files

🤖 Generated with [Claude Code](https://claude.com/claude-code)

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `3272061dff7c`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.