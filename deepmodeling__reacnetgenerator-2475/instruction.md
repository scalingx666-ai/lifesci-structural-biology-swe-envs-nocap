# Issue

**Title:** feat(cli): add --items for selective pipeline execution

## Description

## Summary

Add a new `--items` CLI option that lets users choose which output items to produce. The pipeline automatically resolves the minimal set of processing steps required for the requested items.

## Motivation

For large-scale reactive MD trajectories (e.g., 300k+ atoms, 160+ frames), the full pipeline takes ~12,000 seconds — but most of that time (~8,900s) is spent in the PATH step (atom-route construction + reaction finding). Users who only need **species population data** (e.g., for time-resolved species evolution plots) currently have no way to skip the expensive reaction-finding steps.

## Design

Instead of ad-hoc boolean flags like `--species-only`, this PR introduces an **item-based** interface that naturally extends to any subset:

```
Available items (cumulative dependency chain):
  species   → DETECT + HMM                         (~3,200s)
  reactions → DETECT + HMM + PATH + MATRIX         (~12,000s)
  network   → DETECT + HMM + PATH + MATRIX + NETWORK
  report    → full pipeline (same as default)
```

### CLI usage

```bash
# Fast species-only analysis (~4x speedup)
reacnetgenerator -i traj.lammpstrj -a C H N O --items species

# Species + reaction matrix (but no network/report)
reacnetgenerator -i traj.lammpstrj -a C H N O --items species,reactions

# Full pipeline (default, backward-compatible)
reacnetgenerator -i traj.lammpstrj -a C H N O
```

### Python API

```python
rng = ReacNetGenerator(...)
rng.run_items(["species"])              # fast
rng.run_items(["species", "reactions"]) # intermediate
rng.run_items()                         # full (default)
```

## Implementation

- `ReacNetGenerator.ITEM_REQUIRED_STEPS`: class-level dict mapping each item to its required processing steps
- `ReacNetGenerator.run_items(items)`: resolves minimal steps, executes in canonical order
- Species-only mode: after DETECT+HMM, performs molecule naming + per-frame counting without building the dense `atomeach[N_atoms, N_steps]` array
- `--items` CLI argument with clear help text
- `parm2cmd()` updated to emit `--items` when present
- All existing methods (`runanddraw()`, `run()`, `draw()`, `report()`) unchanged

## Tests

- `tests/test_items.py`: 6 new tests covering species-only, species+reactions, all items, None default, invalid item error, and CLI integration
- All existing tests continue to pass (no regression)

## Backward Compatibility

- Omitting `--items` runs the full pipeline exactly as before
- No existing API is changed or deprecated

<!-- This is an auto-generated comment: release notes by coderabbit.ai -->
## Summary by CodeRabbit

* **New Features**
  * Added an `--items` option to select specific outputs, including species, reactions, networks, and reports.
  * Added support for running only the requested processing steps while automatically handling required dependencies.
  * Preserved existing full-execution behavior when no items are specified.
  * Added validation and clearer errors for unsupported output selections.
  * Species-only requests can now be generated without running the complete analysis pipeline.
<!-- end of auto-generated comment: release notes by coderabbit.ai -->

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `8c31edb44b97`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.