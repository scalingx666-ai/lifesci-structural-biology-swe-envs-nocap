# Issue

**Title:** perf: parse LAMMPS dump frames into arrays

## Description

## Summary

LAMMPS dump parsing creates an ASE `Atom` for every row and sorts those objects by ID before constructing the frame. Fill numeric arrays in ID order instead, then construct one `Atoms` object. Keep the existing cell conversion and bond-detection calls.

Validate duplicate, missing and out-of-range atom IDs and invalid types in both first-frame setup and later frames, so direct placement cannot overwrite atoms or leave uninitialized coordinates. This retains the existing contiguous, one-based ID/type contract; it does not add arbitrary-ID support.

Based on upstream `a276b6b4`. Only the LAMMPS parser and its tests change, with no multiprocessing interface changes.

## Validation

- [Installed-package tox](https://github.com/deepmodeling/reacnetgenerator/actions/runs/34992360569/job/104459931470): **225 passed, 6 xfailed, 4 xpassed**, using Open Babel 3.2.1.
- Local source-snapshot detection and parser tests: **57 passed**, using Python 3.12.7 / Open Babel 3.1.0 and a shared existing native extension. These complement rather than replace installed-package CI.
- Regressions cover reordered columns/rows, orthorhombic and triclinic cells, actual bond/molecule records, invalid ID/type mappings in both parsing passes, and multi-frame setup.
- A deterministic 2048-atom benchmark exercises parsing plus real detection. The new case has no historical CI baseline; its CI timing alone does not establish a speedup ratio.
- Ruff lint/format, pyright, CodeQL, Codecov and CodSpeed Performance Analysis passed.

## Bounded end-to-end comparison

Compare `a276b6b4` with `f424c4c1` in one macOS dependency/native environment: Python 3.12.7, NumPy 1.26.4, SciPy 1.13.1, ASE 3.28.0, Open Babel 3.1.0. Each workload uses five alternating base/head rounds in fresh processes, `nproc=1`, HMM disabled, and runs DETECT through MATRIX. All 30 runs produced byte-identical `.moname`, `.route`, and `.reactionabcd` within their workload, including nonempty reaction output.

| Atoms × frames | Step 1 median, base → PR | Complete analysis median, base → PR |
| --- | --- | --- |
| 256 × 8 | 2.824 → 2.856 s | 8.645 → 8.692 s |
| 8192 × 8 | 3.554 → 3.440 s | 11.717 → 11.882 s |
| 8192 × 64 | 7.959 → 7.156 s | 16.088 → 15.333 s |

The 64-frame case reduced Step 1 time by **10.1%** and complete analysis time by **4.7%**. The eight-frame workloads showed no end-to-end improvement. These are small synthetic workloads with process startup overhead, not a general or production-scale speedup claim.

<details>
<summary>Input recipe and resource measurements</summary>

Inputs use NumPy `default_rng(2026)`, hydrogen positions uniform in `[10, 90)` in a 100 Å periodic cube, and a fixed random permutation of atom rows. Atoms 1 and 2 start at `(2, 2, 2)` and `(2.74, 2, z)`, with `z=2` for 256 atoms and `z=2.01` for 8192 atoms. Each frame translates all positions by `frame * 0.001`; atom 2 additionally moves 3 Å in x on odd frames to produce changing bonds. IDs remain contiguous and one-based.

Median CPU time includes the parent and reaped children. Process-tree RSS and temporary-file bytes were sampled every 50 ms, so they are observed peaks rather than strict upper bounds; summed RSS can double-count shared pages.

| Atoms × frames | CPU seconds, base → PR | Sampled tree RSS, base → PR | Sampled temporary bytes, both |
| --- | --- | --- | --- |
| 256 × 8 | 22.683 → 22.638 | 526.3 → 526.1 MiB | 346,574 |
| 8192 × 8 | 27.212 → 26.809 | 599.5 → 595.9 MiB | 10,685,930 |
| 8192 × 64 | 31.970 → 30.951 | 740.2 → 719.9 MiB | 16,394,423 |

</details>

Coding agent: Codex
Codex version: 0.154.0-alpha.6.2
Model: gpt-6-astra
Reasoning effort: medium

<!-- This is an auto-generated comment: release notes by coderabbit.ai -->

## Summary by CodeRabbit

- **Bug Fixes**
  - Improved LAMMPS dump parsing to correctly preserve atom ordering and coordinates when atom rows or columns are reordered.
  - Added validation for duplicate, missing, or out-of-range atom IDs and types.
  - Improved handling of tilted triclinic cells and multiframe dump strides.
  - Ensured bond and reconnection results remain correct for shuffled atom data.

- **Tests**
  - Added regression coverage for reordered data, invalid atom identifiers and types, multiframe parsing, and large shuffled frames.

<!-- end of auto-generated comment: release notes by coderabbit.ai -->

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `a276b6b48eac`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.