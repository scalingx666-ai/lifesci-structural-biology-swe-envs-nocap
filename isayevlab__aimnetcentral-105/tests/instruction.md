# Issue

**Title:** refactor(lr): migrate Ewald Coulomb to energy+autograd

## Description

Migrates the Ewald Coulomb path to the nvalchemiops >=0.4 energy-in-graph API per the 2026-07-25 design spec: a single energy-only kernel call with positions, charges, and cell in the autograd graph. Forces, stress, dense Hessians, and HVPs all flow through the calculator's existing autograd machinery.

Verification:
- Equivalence vs main on the CIF crystal: energies/charges bit-identical; forces <=1.9e-06 eV/A; stress <=7.5e-08 (kernel accumulation rounding). Inference physics is unchanged — the pre-migration inference path already carried charge relaxation through the in-graph energy.
- Ewald Hessians/HVPs are now relaxed-charge autograd derivatives (previously fixed-charge FD): new consistency test pins autograd Hessian rows against central differences of analytic forces; HVP-vs-dense parametrized tests green.
- Suites: test_pbc+test_lr+test_hvp 135 passed; default 436 passed; gpu 117 passed. Upstream Ewald DeprecationWarnings eliminated.

**PME intentionally not migrated.** Under the energy-graph route, PME train-mode (create_graph=True) forces corrupt by up to 4.5 eV/A. Extensive isolation shows the standalone PME kernel is exact under create_graph (positions, charges, cell, strain, float32/float64, double-backward), an exact-input replay is clean, and a minimal NN-composed reproducer is clean — the corruption manifests only inside the full calculator graph, alongside an intermittently missing charge-gradient autograd edge. Rather than ship that, PME keeps the legacy explicit-terms path bit-for-bit (its tests unchanged, one upstream DeprecationWarning remains). Tracking issue follows with the full evidence chain.

Contract changes: `hessian_vector_product`'s `eps` applies to PME only; Ewald HVP keeps the float64 periodic return dtype; the calculator's `training_derivatives` flag no longer includes ewald (energy-in-graph unconditionally) — one unit test updated accordingly, plus a new test pinning the new contract.

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `fd1841b56c47`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.