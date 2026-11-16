# Issue

**Title:** fix(security): forbid positional constructor args in artifact model_yaml

## Description

## Problem

`build_module` forwards a sibling `args` list into `func(*args, **kwargs)`, but both constructor-argument guards in the artifact YAML walker match **keyword names only**: `_FORBIDDEN_CONSTRUCTOR_KEYS` matches mapping keys and `_validate_d3ts_damping_kwargs` reads `kwargs`.

The parameters those guards protect are not keyword-only — `DispParam(ref_c6, ref_alpha, ptfile, ...)` takes `ptfile` third, and `D3TS(a1, a2, s8, s6, ...)` takes its damping parameters first — so a positional respelling evaded both under the default trust policy:

```
DispParam kwargs      -> REJECTED: Key 'ptfile' is forbidden in model artifacts.
DispParam POSITIONAL  -> ACCEPTED  ... then FileNotFoundError from torch.load
D3TS      kwargs      -> REJECTED: 'a1' must be a finite, non-negative real number
D3TS      POSITIONAL  -> ACCEPTED
```

`args: [null, null, <path>]` reopens the `torch.load(ptfile, weights_only=True)` arbitrary-path read/probe/DoS primitive — including a filesystem existence oracle, since a missing path raises `FileNotFoundError` while an existing non-`.pt` file raises `IndexError` from zip parsing — and attacker-influenced C6/alpha reference data if the named path is a valid tensor file. `args: [-1.0, .nan, .inf]` reopens the undamped `1/d**6` collapse the D3TS check exists to prevent.

Not RCE: `weights_only=True` holds. But it is reachable through every loader that walks artifact YAML, and through the exporter, which would mint a canonical registry-shaped artifact carrying the primitive.

## Fix

Reject `args` outright rather than binding signatures — signature binding would require importing the class *before* the policy decision, which is strictly worse at a trust boundary.

Compatibility is measured, not assumed: no in-repo YAML and none of the 30 shipped or registry-cached artifacts use positional `args` (all are `kwargs:`-only), so no legitimate artifact is affected. Training configs may still use `args` and never route through this validator.

## Verification

- 4 new tests covering the positional spelling of both guards, nesting depth, unsafe import mode, and that the `kwargs` key is not confused with the `args` substring. All fail without the change.
- CI core selection: 527 passed.
- Loading-path regression (`test_model_artifact_security`, `test_model_registry`, `test_hf_hub`, `test_model`, `test_config`): 323 passed.

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `3dabad9100de`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.