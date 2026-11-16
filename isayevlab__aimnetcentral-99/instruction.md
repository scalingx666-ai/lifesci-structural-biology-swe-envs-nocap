# Issue

**Title:** refactor(calculator): extract derivative computation into derivatives.py

## Description

Moves get_derivatives, set_grad_tensors, calculate_hessian, and the external-terms combination helpers into a new calculators/derivatives.py as free functions with explicit parameters (saved_for_grad and create_graph are passed in rather than read from self). The facade keeps every public signature as thin delegations, including AIMNet2Calculator.calculate_hessian as a staticmethod alias; _combine_external_terms/_sum_optional_tensor stay importable from calculator.py for back-compat. hessian_vector_product stays on the class (it orchestrates eval-state snapshots across many instance attributes) and calls the moved functions.

The detached-Hessian autograd contract docstring moves with calculate_hessian into the new module.

Stacked on #92. Verification: test_hvp + test_calculator + test_pbc green (180 passed), ruff/format clean, A/B numerics (energy/forces/Hessian on caffeine, forces/stress on a PBC crystal) bit-identical to main at rtol=atol=1e-10.

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `7db1fff4fef3`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.