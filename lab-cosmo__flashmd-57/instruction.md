# Issue

**Title:** Fix Bussi thermostat DOF count and add zero-KE guard

## Description

## Summary
- `n_degrees_of_freedom` used a hardcoded `3 * len(atoms)`, biasing the target temperature upward whenever DOF-removing constraints (e.g. `FixCom`) are attached. Now uses `atoms.get_number_of_degrees_of_freedom()`, matching ASE's own reference `ase.md.bussi.Bussi` implementation.
- Added a guard in `__init__` that raises `ValueError` if the initial kinetic energy is ~0, to avoid a silent divide-by-zero/NaN when velocities haven't been set yet. Also matches ASE's reference implementation.

## Test plan
- [x] Run the README quickstart example and confirm temperature is unaffected (no constraints attached, so DOF count is unchanged at 3N)
- [x] Attach a `FixCom` constraint and confirm the reported/sampled temperature matches target (previously biased ~1-33% high depending on system size)
- [x] Confirm instantiating `Bussi` with zero-velocity atoms raises `ValueError`

🤖 Generated with [Claude Code](https://claude.com/claude-code)

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `e36831302613`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.