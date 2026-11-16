# Issue

**Title:** perf: reuse molecule presence records in atom-frame analysis

## Description

## Summary

With `--nohmm`, filtering copies molecule records and expands every presence record to a frame-length signal before Step 3. Reuse the original molecule definitions and read sparse frame indices directly, retaining an ordered dense-signal fallback where indices would cost more.

- Share effective-presence interpretation between atom-frame construction and schema 1.1 HDF5 molecule output. Preserve HMM-filtered metadata, observed-frame CSV semantics, molecule ordering, overlap conflicts, and temporary-file ownership.
- Bound frame scans to 65,536 rows and matrix selections to 1,048,576 cells across both atom and frame dimensions. Use slices for fully occupied spans and avoid loading unused structure fields.
- Avoid starting workers for all-sparse no-HMM input; expand dense fallback records locally for one worker or with bounded, ordered worker inputs for multiple workers. HMM filtering and the existing Step 3 task scheduling are unchanged.

Based on upstream `97efe9ff`. This change is self-contained and does not include the separate route/reaction aggregation work.

## Validation

- Local non-GUI suite: **405 passed, 8 skipped, 6 deselected, 6 xfailed, 3 non-strict xpassed**. Skips require `fork`; deselections match `gui`.
- After the final worker-payload refinement: **33 presence/pipeline tests passed with spawn**, and **112 presence/indexed-Step-3/utility tests passed with fork**, covering the skipped initializer cases.
- Eight complete baseline/head runs produced identical text hashes and, where enabled, public HDF5 semantic manifests. Cases cover HMM on/off, origin retention, all three isomer modes, frame/timestep filters, split/selectatoms, species-only execution, and ordinary text output.
- Regressions cover sparse/dense alignment, reversed worker completion, missing/extra signals, truncated definitions, duplicate indices, overlaps across write batches, failed expansion, shared-file cleanup, scratch-directory fallback, and retained metadata for HMM-filtered molecules.
- Ruff 0.17.2, Velin 0.0.12, ty 0.0.15, and `git diff --check` passed. Local testing used macOS; native Linux, Windows, and GUI testing were not performed locally.

## Bounded performance comparison

Compare `97efe9ff` with `f4b1baad` on an Apple M4, macOS 15.6.1, Python 3.12.7, using matched dependency versions and single-threaded BLAS. Each of 13 configurations ran five alternating baseline/head pairs in fresh processes. All **130 runs** matched their matrix/conflict digests and enabled HDF5 presence-range digests.

The table below uses no HMM, one worker, and no HDF5. Stage time includes filtering plus atom-frame construction; fixture preparation and validation are excluded.

| Synthetic case | Stage wall time, base → PR | Matrix-only time, base → PR | Parent peak RSS, base → PR |
| --- | --- | --- | --- |
| Small | 1.402 → 0.014 s | 0.0091 → 0.0093 s | 249.1 → 253.8 MiB |
| Sparse | 1.509 → 0.056 s | 0.0627 → 0.0507 s | 328.7 → 333.2 MiB |
| Dense | 1.694 → 0.065 s | 0.2758 → 0.0588 s | 519.1 → 397.0 MiB |
| Mixed | 1.604 → 0.093 s | 0.0832 → 0.0715 s | 386.6 → 360.9 MiB |

The large no-HMM stage reductions include avoided pool startup; the matrix-only column separates that effect. Small/sparse parent RSS did not decrease. HMM-enabled small/sparse stage times remained near baseline, while dense matrix writes improved. These are synthetic measurements of the changed stages, not a complete scientific-analysis speedup claim. Matrix storage, individual signals, and retained metadata still scale with the input.

See the [reproduction script and full workload/resource report](https://github.com/hcustc/reacnetgenerator/blob/f4b1baadf5d4bd4b47733e1a0beeb449c4089296/benchmarks/README.md) for HDF5 and two-worker cases, CPU time, temporary-file sizes, dependency versions, and measurement limits.

Coding agent: Codex
Codex version: codex-cli 0.165.0-alpha.1.2
Model: gpt-6-astra
Reasoning effort: xhigh

<!-- This is an auto-generated comment: release notes by coderabbit.ai -->
<!-- coderabbit-ai-generated:v1 -->

## Summary by CodeRabbit

* **Bug Fixes**
  * Improved consistency of molecule-presence results across matrix and timed-output generation, including when HMM filtering is disabled.
  * Missing or malformed molecule data is now detected more clearly, and failed processing cleans up newly created output files.

* **Documentation**
  * Added benchmark guidance describing measured workloads, metrics, correctness checks, and recorded results, with cautions about interpreting the findings.

* **Chores**
  * Added a command-line benchmark for evaluating filtering, molecule-matrix construction, and timed-output generation.
<!-- end of auto-generated comment: release notes by coderabbit.ai -->

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `36eaf01da300`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.