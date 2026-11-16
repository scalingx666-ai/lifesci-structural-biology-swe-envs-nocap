# Issue

**Title:** Trust the embedded-dispersion modules solvation artifacts need

## Description

## Problem

The artifact trust boundary shipped with a default allowlist missing two first-party classes:

- `aimnet.modules.D3TS`
- `aimnet.modules.lr.DispParam`

Both are `nn.Module` subclasses defined in `aimnet/modules/lr.py`. An unreleased development solvation artifact references both, so it stopped loading:

```
ValueError: Invalid v2 artifact field 'model_yaml':
Untrusted import path for 'class': 'aimnet.modules.lr.DispParam'
```

## Why it was not caught sooner

Nothing loads the solvation model until it is actually needed, so this does not surface at import or at startup. It surfaced as a multi-hour production run aborting partway, with every GPU worker raising on that model after having already completed all of its gas-phase work.

## Both classes, not just the one in the message

The two entries were enumerated from the artifact's own `model_yaml`, not from the exception text. Fixing only `DispParam` — the class the error names — leaves `D3TS` to fail on the very next load.

## Verification

With this change the solvation model loads and computes: a water optimization under `optimize_and_thermo` converges to a finite energy on an L40S. Without it, the same call fails at load.

New tests assert membership in the allowlist and that each entry resolves to a real `nn.Module`, since an entry that does not resolve would trade a load failure for an import error.

Full suite: 160 passed.

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `f346da00c3a7`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.