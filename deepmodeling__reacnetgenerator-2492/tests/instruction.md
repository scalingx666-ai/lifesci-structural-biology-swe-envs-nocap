# Issue

**Title:** perf: use indexed tasks for Step 3 analysis

## Description

## Summary

Step 3 sends full atom timelines and adjacent-frame arrays to workers despite storing its state in memory-mapped files. Attach workers to those files once and send integer indices, scan in bounded blocks, and skip inactive reaction transitions.

- Preserve filtered route positions, split outputs, reaction counts and output formats, including ordered event output and unordered count-only reduction.
- Keep initialized workers and in-flight results bounded, detect startup failures, and close workers before removing parent-owned mappings.
- Avoid a reproduced scheduling regression: batch small count-only transition indices (at most 100 transitions, limited by 65,536 atom-transition visits), and run route workloads of at most 65,536 atom-frame values directly in the parent. Larger workloads retain indexed multiprocessing; ordered event tasks retain their existing path.

## Validation

- Official tox on `8f995d36`: **231 passed, 6 xfailed, 4 xpassed**. Wheel/source builds, documentation, JavaScript tests, pyright, CodeQL and pre-commit passed.
- Codecov covers all modified coverable lines (project 93.04%). CodeRabbit reviewed the current head without actionable findings; docstring coverage is 96.05%.
- New regressions first failed on scalar-only count dispatch and unnecessary small-route pool startup, then passed after repair. Tests check batch limits, exact counts, active indices, split semantics, real spawn/fork workers, partial attachment failures and cleanup. Local targeted result: 92 passed, 8 platform/start-method skips.
- A controlled Linux job compared official base `6a63a734`, pre-fix head `ca51f467`, and fixed head `8f995d36` under one dependency/native environment, fixed inputs and two pinned CPUs. Seven bounded route/reaction workloads ran five alternating rounds each. All outputs matched across 105 runs.
- Dense count-only processing (16 atoms, 2048 frames, 2 workers) took **0.267 s → 1.069 s → 0.188 s** for base, pre-fix and fixed versions. The initial PR therefore had a real approximately 4x regression at this dispatch seam, now repaired. Fixed/base median changes across the seven workloads range from -66.1% to -0.3%; individual short/sparse measurements still contain outliers.

See the  for all measurements, raw artifacts, code and limitations. Earlier isolated-kernel tests did not exercise complete route/reaction scheduling and were insufficient to rule out this regression.

These are small controlled workloads, not a production-scale speedup guarantee. State storage still scales with atom/frame count, and route results and individual reaction graphs can grow with actual content. Count-only output retains completion-dependent ordering for equal-count reactions.

CodSpeed Performance Analysis still reports a 25.53% aggregate regression with runtime-environment warnings for its existing isolated benchmarks. That check has not been dismissed or overwritten; its disposition remains visible for maintainer assessment alongside the controlled workload evidence.

Coding agent: Codex
Codex version: 0.154.0-alpha.6.2
Model: gpt-6-astra
Reasoning effort: xhigh

<!-- This is an auto-generated comment: release notes by coderabbit.ai -->
## Summary by CodeRabbit

* **Performance**
  * Improved processing of large reaction-network datasets with bounded-memory scanning and more efficient batching.
  * Improved multiprocessing efficiency for atom-route and reaction analysis.
  * Small workloads now avoid unnecessary worker startup, improving responsiveness.
  * Added benchmark coverage for key route and reaction-processing operations.

* **Reliability**
  * Improved temporary data handling and worker shutdown behavior, including safer cleanup after processing errors.
  * Added validation for unsupported multiprocessing configuration combinations.
  * Preserved route and reaction results across optimized processing paths.
<!-- end of auto-generated comment: release notes by coderabbit.ai -->

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `6a63a7343356`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.