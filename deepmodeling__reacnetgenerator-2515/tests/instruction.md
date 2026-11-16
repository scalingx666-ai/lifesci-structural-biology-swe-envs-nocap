# Issue

**Title:** perf: bound species population aggregation

## Description

Writing `.species` currently allocates a Counter for every frame and retains all population cells until output. This change uses a budgeted dictionary for small inputs and compact dense/sparse scratch storage for larger inputs while preserving observed-frame multiplicity and per-frame first-appearance order.

The observation spool is capped, scratch failures fall back to bounded input rescans, and owned temporary files are cleaned up on failure. Sparse partition refinement at least halves the frame span on each pass, preventing near-limit crowded frames from causing linearly many full input rescans. The workspace targets do not impose a constant total RSS or disk-usage limit; exceptionally wide dense rows can also exceed the block target.

Based on current upstream `b2d30fb4`, which includes #2513 and #2514.

## Validation

- All 29 species-population tests passed, including four near-limit regressions that fail the pass-count bound before the refinement fix and pass afterward. They cover complete/unavailable observation spools, sparse separation, and dense fallback, while requiring byte-identical output.
- 175 targeted tests passed with the `fork` multiprocessing start method, including actual worker processes and aromatic normalization.
- All six complete species-writing fixtures matched upstream `b2d30fb4` byte for byte after the fix.
- Ruff, formatting, Velin, ty, and whitespace checks passed. A local AST check found docstrings on all 55 functions added or modified by the PR.
- Before the refinement fix, the full non-GUI suite passed 493 tests, and eight end-to-end configurations matched 65 generated text/CSV/table files plus six HDF5 semantic manifests. The report separates these earlier results from the latest targeted checks.

Local validation used macOS and Python 3.12.7 with matching dependencies and the unchanged native extension. Linux, Windows, GUI, and a fresh wheel build were not validated locally.

## Performance evidence

The original five-repeat measurements against `ecca5231` are retained with their provenance: dense-case peak RSS fell from 139.75 to 92.59 MiB (about 34%), while the mixed case used about 12% less RSS with about 7% higher wall time. These are local samples of the species-writing stage, not whole-pipeline or universal speedup claims. The updated-baseline correctness pass is not presented as new performance evidence.

See the [validation report and raw samples](https://github.com/hcustc/reacnetgenerator/blob/perf/bound-species-populations/benchmarks/species_populations.md) for resource limits, all six cases, and reproduction instructions.

Coding agent: Codex
Codex version: codex-cli 0.165.0-alpha.1.2
Model: gpt-6-astra
Reasoning effort: xhigh

<!-- This is an auto-generated comment: release notes by coderabbit.ai -->
<!-- coderabbit-ai-generated:v1 -->

## Summary by CodeRabbit

* **Improvements**
  * Species-population output handles large datasets with bounded memory and preserves molecule ordering and duplicate observations. It can fall back to alternate processing when temporary storage is unavailable.
* **New Features**
  * Added a benchmark tool that compares complete species-file writes across workloads, records timing and memory usage, and checks that outputs match.
* **Tests**
  * Added coverage for output correctness, empty inputs, storage failures, cleanup, and bounded processing.
* **Documentation**
  * Added benchmark procedures, results, and validation details.
<!-- end of auto-generated comment: release notes by coderabbit.ai -->

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `b2d30fb4ce8e`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.