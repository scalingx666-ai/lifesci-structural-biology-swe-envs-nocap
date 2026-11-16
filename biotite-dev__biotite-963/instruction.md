# Issue

**Title:** Reduce CellList query allocations and upgrade CodSpeed to v5

## Description

CellList distance queries currently collect every candidate from adjacent cells, then allocate a second vector for the actual contacts. Filter candidates during cell traversal and append only accepted pairs, eliminating the intermediate candidate buffer while preserving result order and inclusive distance boundaries.

Upgrade the benchmark workflow from `CodSpeedHQ/action@v3` to `@v5` and explicitly select `mode: simulation`. Allocation costs remain included. CodSpeed v5 changes the simulation cost model, so the first v5 run establishes a new baseline; comparisons with earlier versions are marked N/A ([migration notes](https://codspeed.io/changelog/2026-08-03-codspeed-v5-only-your-code-at-its-real-cost)). Reduced CI variance still needs verification across CI runs.

Validation on the branch based on current `main`:

- Built the release wheel and tested that wheel: **337 passed, 234 skipped** across CellList, comparison, SASA, hydrogen bonds, connectivity, base pairs, RDF, and rings. Skips require the unavailable optional RDKit dependency.
- `cargo fmt --check`, `cargo clippy -- -D warnings`, workflow YAML validation, and `git diff --check` pass.

Earlier paired local measurements on macOS/M3 Max, before moving this change onto `main`, showed approximately 31–37% lower time for the three CellList contact benchmarks and 9% lower time for the tested lDDT workload. These are indicative local measurements, not CodSpeed results for this PR.

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `06ca1c349a32`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.