# Issue

**Title:** Feat/per residue constraints

## Description

## Summary

- Adds `residue_constraints` to YAML protein entities, enabling per-residue amino acid whitelisting (`allowed`) and blacklisting (`disallowed`) during inverse folding
- Constraints are applied as logit biases (`-inf` for blocked AAs) in the autoregressive decoder, compatible with the existing `--inverse_fold_avoid` global flag
- Overlapping constraints use intersection semantics: only AAs allowed by ALL constraints at a position survive
- Includes CPU-only unit tests (40 tests, no GPU required) and example YAML

## Why this matters

Per-residue constraints give researchers precise control over sequence generation at the residue level — enforcing specific amino acids at hotspot positions (e.g., catalytic triads, disulfide anchors, selectivity determinants) while the model freely optimizes the remaining sequence for structural fit. This enables constrained design workflows that are central to computational drug discovery: cyclic peptides with pharmacophore-locked positions, binders with pre-defined interface contacts, and enzyme scaffolds with conserved active sites. Constraints are enforced during generation itself, so every output sequence is guaranteed compliant — making design campaigns substantially more efficient.

## Design

New YAML syntax on `protein:` entities:

```yaml
- protein:
    id: A
    sequence: 10
    residue_constraints:
      - position: 1
        allowed: A            # whitelist: only Alanine
      - position: 3..5
        disallowed: CM        # blacklist: no Cys or Met
      - position: 2,4,6
        allowed: WYF          # comma-separated positions
```

**Key points:**
- Positions are 1-indexed (consistent with `binding_types`, `res_index`)
- Supports string format (`"AGS"`) and list format (`[A, G, S]`)
- Each constraint must have exactly one of `allowed` or `disallowed`
- Validated at parse time: out-of-bounds positions, unknown AA codes, empty sets, and fully-blocked positions all raise errors

## Files changed (14 files, +843/-37)

| File | Change |
|------|--------|
| `src/boltzgen/data/parse/schema.py` | +214: constraint parser, YAML integration, file entity padding fix |
| `src/boltzgen/data/data.py` | +20: `res_aa_constraint_mask` field on `DesignInfo`, validation |
| `src/boltzgen/model/modules/inverse_fold.py` | +54/-1: per-residue logit bias in decoder, combined with global restrictions |
| `src/boltzgen/task/predict/writer.py` | +51/-36: save constraint mask to NPZ metadata |
| `src/boltzgen/task/predict/data_from_generated.py` | +28/-1: load constraints in refolding step |
| `src/boltzgen/data/feature/featurizer.py` | +8: featurize constraint mask |
| `src/boltzgen/data/tokenize/tokenizer.py` | +4: default zero-mask for non-design tokens |
| `src/boltzgen/data/const.py` | +1: `aa_constraint_mask` in token features |
| `src/boltzgen/model/modules/masker.py` | +3: propagate constraints through masker |
| `src/boltzgen/task/predict/data_from_yaml.py` | +4: transfer constraints to tokenized data |
| `tests/test_residue_constraints.py` | +381: 40 unit tests (parsing, intersection, error paths) |
| `tests/conftest.py` | +70: mock heavy deps for CPU-only testing |
| `example/residue_constraints_test.yaml` | +33: standalone example |
| `example/design_spec_showcasing_all_functionalities.yaml` | +9/-1: add constraints to showcase |

## Test plan

- [x] Unit tests pass (40 tests, no GPU): `pytest tests/`
- [x] End-to-end: 10 designs with 7 overlapping constraints on cyclic peptide — all designs comply
- [x] Backward compatible: YAMLs without `residue_constraints` produce identical results
- [x] Compatible with `--inverse_fold_avoid` global flag (additive combination)
- [x] `boltzgen check example/residue_constraints_test.yaml` — validates successfully

Quality checked by Claude Code 4.6

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `3eddb5a3c73e`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.