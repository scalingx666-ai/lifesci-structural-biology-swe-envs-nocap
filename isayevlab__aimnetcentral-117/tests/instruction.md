# Issue

**Title:** Harden dispersion entries in the artifact trust boundary

## Description

, fixing the six Major findings from a three-agent security review of the dispersion allowlist additions:

1. **Forbid `ptfile` in artifact model_yaml** — `DispParam.__init__` runs `torch.load` on that kwarg; the walker never inspected constructor kwargs, so default-trusted artifacts gained an arbitrary-path read/probe primitive. The exporter always strips it, so no legitimate artifact is affected.
2. **YAML↔metadata D3TS consistency** — D3TS presence is now derived from model_yaml and must agree with `has_embedded_d3ts`, closing the silent dispersion double-count / silent-loss window for mislabeled artifacts.
3. **Validate D3TS damping numerics** — `a1/a2/s8/s6` from YAML must be finite and non-negative (they live outside the state dict; NaN or zero damping previously loaded silently).
4. **Drift-class invariant** — new test enforces trusted-class ⊆ frozen-ABI, plus an end-to-end fixture proving an embedded-D3TS artifact shape validates under the registry policy.
5. **Written admission rule** for future default-allowlist additions, including the constructor-side-effect criterion that would have caught (1) at review time.
6. **Spelling coherence** — `aimnet.modules.lr.D3TS` is now trusted alongside the barrel spelling (the loader detects D3TS by substring; the validator matches exactly), with the DispParam single-spelling rationale documented.

Also repairs a pre-existing test mock in test_train_utils.py that produced exactly the mislabeled shape check (2) now rejects.

Verification: security+ABI suites 228 passed; model+calculator suites 111 passed; full default suite 589 passed, 0 failed; ruff clean.

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `f37026a70017`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.