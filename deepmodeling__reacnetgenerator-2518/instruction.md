# Issue

**Title:** perf: batch SMILES conversion with reusable worker state

## Description

Large SMILES workloads repeatedly pickle the full collector for each molecule. Initialize only the conversion metadata once per worker and submit bounded, ordered batches; stream oversized results through parent-owned temporary files. Small spawn/forkserver inputs retain the existing per-record path, and `nproc=1` retains local execution.

The change is based on official `master` at `6e35522f` (merged #2517). It adds no name cache and leaves the shared runner, HMM, route/reaction scheduling and public output formats unchanged.

Normal batches have at most 64 records, 256 KiB serialized input and a 4 MiB decoded-size estimate, with at most two unconsumed batches per worker. A 1 MiB result prefix spills before overflow. Indivisible inputs, individual decoded molecules and per-worker atom metadata can exceed those planning budgets; this is not a total-RSS guarantee.

Validation:

- Full non-GUI suite: 583 passed, 9 skipped, 6 deselected, 6 xfailed and 3 non-strict XPASS. The expanded 24-test batching suite then passed on both macOS spawn and Linux fork, including two additional timeline-filter cases.
- Full repository and changed-file hooks, `ty==0.0.15`, a macOS wheel build, and Linux native editable builds passed.
- 304 alternating timing samples, 32 follow-up controls and 24 separate transport audits passed their output comparisons. Fixed-stream PATH samples passed the official HDF5 validator and matched official manifests and text hashes.
- For the 22,460-record replay with two workers, median name time fell 71.2% on macOS spawn and 85.8% on Linux fork; complete PATH fell 58.2% and 72.1%, respectively. These are within-host measurements on one replay workload, not full-pipeline speedups.
- Small spawn controls retained per-record scheduling. Shared-host fluctuations and unfavorable controls are retained: the repeated Linux serial control was +2.3% in median, while the initial +4.9 ms tiny-four-worker difference did not reproduce. Parent/child CPU, RSS, all ranges and IPC bytes are in the accompanying CSV files.

See [`benchmarks/smiles_batches.md`](https://github.com/hcustc/reacnetgenerator/blob/1a1e1384e45a2bc49980c8cab9458e7255ce33d4/benchmarks/smiles_batches.md) for the matrix, source hashes, reproduction commands and limitations. Full DETECT-through-MATRIX preflight hashes had legal molecule-ID reordering from existing parallel DETECT; performance integration claims therefore use fixed-input complete PATH, while end-to-end behavior is covered by the regression suite.

Coding agent: Codex
Codex version: codex-cli 0.165.0-alpha.1.2
Model: gpt-6-astra
Reasoning effort: xhigh

<!-- This is an auto-generated comment: release notes by coderabbit.ai -->
<!-- coderabbit-ai-generated:v1 -->

## Summary by CodeRabbit

* **Performance**
  * Large multi-process SMILES conversions can now be processed in bounded batches, with results kept in order and progress reported per molecule.
  * Large results can be handled without keeping all output in memory; smaller workloads and single-process conversions retain existing processing behavior.
* **Documentation**
  * Added benchmark results, reproduction guidance, and notes on measurement limits.
* **Benchmarking**
  * Added tools to capture and replay benchmark workloads, report timing and resource usage, audit data transfer, and export results to CSV.
<!-- end of auto-generated comment: release notes by coderabbit.ai -->

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `6e35522f136d`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.