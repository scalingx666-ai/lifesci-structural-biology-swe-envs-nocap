# Issue

**Title:** Add symplectic integrator

## Description

## Summary

Adds a fixed-point midpoint-rule symplectic integrator with minimal changes to the existing API.

- New `src/flashmd/fpi.py`: Anderson-accelerated fixed-point solver (ported from #32).
- New `src/flashmd/symplectic_stepper.py`: `SymplecticStepper` — wraps a `FlashMDStepper` for the initial guess and refines it using a separate symplectic correction model.
- `ipi.py` and `ase/velocity_verlet.py`: tuple model detection. The plain single-model API is completely unchanged.

### Usage

Pass a tuple instead of a plain model wherever a model is expected:

```python
model = (flashmd_model, (symplectic_model, {"tol": 1e-5, "max_iter": 50}))

# i-PI
stepper = get_nve_stepper(sim, model, device)

# ASE (Bussi and Langevin inherit this for free)
md = VelocityVerlet(atoms, timestep, model)
```

The `config` dict keys are all optional and passed straight to `anderson_solver`: `tol`, `max_iter`, `m`, `beta`, `lambda_reg`.

This supersedes #32, which is being closed in favour of this smaller focused change. The example will follow in a separate PR on top of this one.

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `af7e5b691e3f`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.