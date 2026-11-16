# Issue

**Title:** perf: stream compact molecule detection records

## Description

Detection currently keeps Python frame-occurrence lists and accumulates all compressed save results. Store observations in widening unsigned arrays and stream records through a 1 MiB writer, preserving first-seen molecule order, arrival order, duplicate visits, metadata and public output semantics.

For large collections of short records under fork, amortize compression scheduling with bounded batches. Reuse immutable compressed bytes for exact frame histories within each batch while still emitting every molecule record. Small/dense/spawn input and collections containing a frame buffer above 1 KiB retain the serial path. Detection workers and parsing are unchanged.

Based on official `master` `8b0d8f40`, including #2513–#2515. Review repair `71bd5aaf` addresses the fork regressions raised against the initial serial PR `20aa950d`. Follow-up `fccd6918` adds only test-helper docstrings; executable test ASTs and the measured production source hash are unchanged.

## Resource and correctness guarantees

- At most 64 KiB raw frame data and 2,048 records per batch; actual serialized input is checked against 256 KiB before submission.
- At most four submitted-but-unconsumed batches, each with a serialized result capped at 1 MiB. Ordered `run_mp` does not advance past the oldest unconsumed batch; at most three early results are spooled to disk.
- Per-batch reuse holds at most 2,048 keys, 64 KiB raw key bytes and 1 MiB compressed values. Keys include dtype and the exact ordered bytes, including duplicate observations.
- The writer remains 1 MiB. Failed compression/writing closes the suspended result iterator, stops workers and removes incomplete output while preserving any previously published filename.
- These are payload caps, with bounded container/protocol overhead and transient copies. Unique definitions, occurrence buffers, timestep metadata and inherited process state still scale with the input. The serial path retains the existing indivisible-record exception.

## Focused validation

- **130 fork tests passed**, covering detection records, byte budgets, delayed-first-batch ordering, bounded spooling/submission, progressive writing, cleanup, 64-bit widening through collection, worker utilities and timed output.
- Hosted Linux tox on `71bd5aaf`: **550 passed, 6 xfailed, 4 xpassed**. The later `fccd6918` changes only test documentation; its hosted checks run separately.
- Applicable pre-commit hooks, `ty==0.0.15` and `git diff --check` passed. The documentation follow-up also passed all applicable pre-commit hooks.
- Three independent source installations use Python 3.12.7 and **75 matching dependency versions**. Every targeted/threshold sample matched semantic output; deterministic replays also matched ordered output. Source hashes are recorded and checked against the fixed revisions.
- Existing dense/spawn evidence and the initial PR's full-suite/eight-pipeline validation remain in the report with their original revision labels. Twelve additional serial-path controls matched outputs; this repair did not repeat the full benchmark campaign.

## Targeted performance and limits

Fresh processes use single-threaded BLAS and all six revision-order permutations. Replay has six samples per revision; high churn retains two complete six-round blocks because its timings were noisy. Columns are **fixed baseline `b2d30fb4` → initial serial PR `20aa950d` → repair**.

| Case | Wall seconds | CPU seconds | Parent peak MiB |
| --- | ---: | ---: | ---: |
| fork replay-unique | 0.1668 → 0.1934 → 0.1263 | 0.2822 → 0.1761 → 0.1426 | 275.7 → 265.0 → 267.7 |
| fork detect-changing-2 | 0.4046 → 0.4115 → 0.3931 | 0.7991 → 0.7199 → 0.7747 | 272.0 → 264.2 → 267.2 |

Replay is **24.2% faster than the fixed baseline**; every repaired sample is faster than its fastest baseline sample. High churn has a **2.8% lower median**, but distributions overlap substantially, so these data do not establish a uniform or statistically certain high-churn speedup. Non-task desktop services were active; no other validation from this task ran concurrently.

The repair uses about 2.7/3.0 MiB more parent peak RSS than the serial PR. High-churn CPU is 7.6% above that PR and 3.1% below the fixed baseline. Parent and child RSS maxima are separate measurements and must not be summed. These are synthetic macOS stage results, not Linux or end-to-end production speedup claims. CodSpeed's cross-runner warning is a separate issue.

See the [complete report](https://github.com/hcustc/reacnetgenerator/blob/71bd5aaf56beb592877335cd09c49b8d23ba0e1c/benchmarks/detection_records.md), [all final and control samples](https://github.com/hcustc/reacnetgenerator/blob/71bd5aaf56beb592877335cd09c49b8d23ba0e1c/benchmarks/detection_records_review.csv), and [all exploratory samples, including rejected variants](https://github.com/hcustc/reacnetgenerator/blob/71bd5aaf56beb592877335cd09c49b8d23ba0e1c/benchmarks/detection_records_exploration.csv). The original [154 samples](https://github.com/hcustc/reacnetgenerator/blob/71bd5aaf56beb592877335cd09c49b8d23ba0e1c/benchmarks/detection_records.csv), including the historical approximately 7% regression, are unchanged.

<!-- This is an auto-generated comment: release notes by coderabbit.ai -->
<!-- coderabbit-ai-generated:v1 -->

## Summary by CodeRabbit

* **Performance**
  * Large detection records may now be compressed in parallel under supported conditions, while preserving record order and duplicates.
* **Bug Fixes**
  * Preserved detection-record ordering and alignment across input formats and process counts, including when frame indices exceed their initial storage range.
  * Prevented failed saves from leaving partial output files or replacing previously published results.
  * Improved handling of empty detection output and collection errors.
* **Tests**
  * Added coverage for record writing, buffering, ordering, overflow, cleanup, and alignment.
* **Documentation**
  * Added benchmark methodology, results, and validation details.
<!-- end of auto-generated comment: release notes by coderabbit.ai -->

Coding agent: Codex
Codex version: codex-cli 0.165.0-alpha.1.2
Model: gpt-6-astra
Reasoning effort: xhigh

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `8b0d8f402d3f`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.