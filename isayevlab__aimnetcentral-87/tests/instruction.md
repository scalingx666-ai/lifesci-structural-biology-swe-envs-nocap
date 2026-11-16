# Issue

**Title:** refactor(registry): centralize family policy as registry data

## Description

## Summary

 (deferred finding): family policy was scattered across three files with three different string conventions - a `rsplit("_", 1)` naming convention in `model_registry.py` (spec living only in YAML comments), hardcoded `family == "rxn"` branches plus a module-level `_WB97M_D3_PARAMS` dict in `calculator.py`, and a slug heuristic in `hf_hub.py`. Adding a new family meant touching all three and hoping the conventions agreed.

Now the policy is data:

- **`model_registry.yaml`** gains a `families:` section holding per-family calculator policy (charge-support declaration, post-hoc D3(BJ) parameters), and every model entry declares an explicit `family:` field - the key-naming convention is documentation only, never parsed.
- **`model_registry.py`** exposes a frozen `FamilyPolicy` dataclass and `get_family_policy()`. Unknown or undeclared families return a neutral policy (no defaults applied), so raw `nn.Module` loads and third-party checkpoints are unaffected. `get_registry_model_family` reads the explicit field instead of parsing names.
- **`calculator.py`** `_apply_family_defaults` is fully data-driven - no family string comparisons remain; the rxn rules and D3 parameters moved into the registry YAML.
- **`hf_hub.py`** derives ensemble member names through the same policy accessor.

## Behavior

Verified with a before/after harness capturing (1) name/family resolution for every registry key and alias, (2) `_apply_family_defaults` output for synthetic per-family metadata edge cases, (3) full calculator construction for the six bundled models (effective metadata, external D3/Coulomb params, warnings), and (4) hf_hub member-name derivation per family slug. Sections 1-3 are byte-identical.

One deliberate change in (4): the old hf_hub slug heuristic replaced dashes with underscores before substring-matching registry keys, but registry keys use dashes (`aimnet2-b973c-d3_0`), so it could never match and the documented registry fallback always raised on a `config.json` without `model_yaml`/`member_names`. The policy-based lookup makes that fallback work as written (warn + fall back to the GCS registry); genuinely unknown families still raise.

## Testing

- `test_model_registry.py` + `test_model.py` + `test_serialization_abi.py`: 103 passed (includes new tests: every family block resolves, every registry model maps to a declared family, unknown families get the neutral policy)
- `test_hf_hub.py` (offline): 6 passed
- family/registry/rxn calculator tests: 3 passed
- `ruff check` / `ruff format --check` clean

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `3201714ea7a2`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.