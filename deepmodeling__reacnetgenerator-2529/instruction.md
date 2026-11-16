# Issue

**Title:** fix: make HMM molecule routes deterministic

## Description

Concurrent detection and HMM completion order can change which molecule wins an overlapping atom/frame cell, moving `.route` transitions between otherwise identical runs. This orders retained HMM records by numeric atom indices, bond endpoint pairs, and bond orders before assigning molecule IDs. A disk-backed structural index and result spool keep definitions and signals aligned without retaining every result in memory.

Overlaps explicitly select the largest canonical molecule ID, independently of write order. Conflict flags remain available to reaction-event filtering, and HDF5 molecule ranges retain their independent HMM signals. This is a deterministic tie-breaker, not a chemical confidence rule; molecule IDs, species ordering, and route positions can change relative to older releases, including serial runs. The HMM guide documents these semantics and temporary-disk costs.

Validation: 730 core tests passed on Linux, including repeated 1/2/8-worker runs under fork and spawn, reversed detection results, delayed short/long HMM tasks, overlapping-record permutations, and normalized HDF5 manifests containing nonempty transition evidence. GUI/report/CLI and benchmark-fixture suites were excluded from this local core run; the private methane trajectory and macOS were not tested. Ruff and diff checks passed.

.

<!-- This is an auto-generated comment: release notes by coderabbit.ai -->

<!-- coderabbit-ai-generated:v1 -->

## Summary by CodeRabbit

* **Bug Fixes**
  * Molecule results now appear in a consistent order regardless of processing order or worker configuration.
  * Overlapping molecule assignments consistently favor the higher-ID molecule. Repeated assignments from the same molecule no longer register as conflicts.
* **Documentation**
  * Added guidance on filtering overlapping molecules, conflict handling, route counts, and resource usage.
  * Documented possible differences in molecule IDs, species ordering, and routes compared with older releases.

<!-- end of auto-generated comment: release notes by coderabbit.ai -->

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `6f6d4bfef375`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.