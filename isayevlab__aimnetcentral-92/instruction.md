# Issue

**Title:** refactor(calculator): extract model resolution into resolve.py

## Description

Moves registry/HF/file/raw-module dispatch and family-policy reconciliation out of AIMNet2Calculator.__init__ into a resolve_model() function in a new calculators/resolve.py. The constructor shrinks to a single resolve_model() call plus wiring; no public API or behavior change. One test updated to monkeypatch the new module location.

Verification: calculator/registry/HF/serialization suites plus full CPU suite green; A/B numerics check (energy/forces/Hessian on caffeine, forces/stress on a PBC crystal) bit-identical to main at rtol=atol=1e-10.

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `9a6c56440349`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.