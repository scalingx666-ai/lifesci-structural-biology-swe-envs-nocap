# Issue

**Title:** feat(calculators): add harmonic vibrational analysis helper

## Description

Adds `aimnet/calculators/vibrations.py`, a small numpy-only helper for harmonic frequency analysis of the Hessian returned by `AIMNet2Calculator.eval(data, hessian=True)`.

**What it does**

- `analyze_hessian(hessian, positions, masses, *, project_tr=True)`: symmetrizes and mass-weights the Cartesian Hessian, projects out rigid translations and rotations (5 for a linear molecule, 6 otherwise) with a QR-orthonormalized basis, diagonalizes, and returns `VibrationalAnalysis(frequencies_cm1, energies_ev, modes, is_linear, n_tr_removed)`. Imaginary modes are reported as negative wavenumbers; `modes` are unit-norm Cartesian displacements of shape `(n_modes, N, 3)`.
- `masses_amu`, `is_linear_molecule`, `translation_rotation_basis` are exposed as building blocks.
- `vibrational_analysis(calc, data)` wraps the `eval(..., hessian=True)` call and the analysis for a single structure.

**Units and shapes**

- Input Hessian in eV/Å^2 with positions in Å, accepted as `(N, 3, N, 3)` (the `hessian=True` output, see `derivatives.calculate_hessian`) or `(3N, 3N)` (as returned by `AIMNet2ASE.get_hessian`); numpy arrays or torch tensors.
- Output wavenumbers in cm^-1 and quanta in eV, using CODATA 2018 constants. Masses come from the table already bundled in `aimnet.constants`, so the module has no ASE dependency but accepts `atoms.get_positions()` / `atoms.get_masses()` directly and is compatible with the `[ase]` extra.

**Numerical checks (tests/test_vibrations.py, CPU only, no model weights)**

- Diatomic with a known force constant reproduces omega = sqrt(k/mu) to 1e-6 relative (agrees to ~1e-16).
- Water: TR basis Gram matrix equals the identity within 1e-10, 6 rigid-body vectors removed; a mass-weighted isotropic well gives 3 identical real modes; a single negative curvature along a vibrational direction yields exactly one negative frequency.
- CO2 is detected as linear (5 TR vectors, 4 modes); `(N, 3, N, 3)` and `(3N, 3N)` inputs agree.

**Docs**: a short tip in `docs/tutorials/geometry_optimization.md` pointing to the helper from the existing recipe, which drops the six lowest modes and therefore mishandles linear molecules and imaginary frequencies.

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `6306f72ed153`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.