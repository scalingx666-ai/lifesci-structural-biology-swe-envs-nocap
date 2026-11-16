# Issue

**Title:** perf: aggregate repeated reaction-path results

## Description

Repeated atom routes currently retain event-level molecule-pair arrays in the parent process, and reaction graphs retain duplicate atom edges. Aggregate repeated route pairs in bounded worker blocks, accumulate species-pair counts directly, limit route text buffering to 1 MiB (one indivisible atom route may exceed the budget), and retain each reaction edge once while preserving conflict evidence and independent participant instances.

Based on current official `master` at `ecca5231abcbedfbd6e3a2806db30098ea3b8488`, including #2512 and the merged molecule-presence optimization #2513. This PR contains only the second optimization; it preserves output formats, no-HMM first-atom multiplicity, HMM global molecule-pair uniqueness, split/selection behavior, and legacy array entry points.

## Validation

- 468 installed-package non-GUI tests passed; 8 fork-only skips, 6 GUI deselections, 6 existing xfails and 3 existing xpasses.
- 114 utility/indexed-worker/aggregation tests passed under macOS `fork`.
- Eight complete baseline/candidate pipeline configurations produced identical text hashes and validated HDF5 semantic manifests, including HMM/no-HMM, isomer modes, splits, selected atoms, species-only output, and timed evidence.
- Independent package builds with matching dependencies; Ruff, `ty==0.0.15`, applicable pre-commit hooks and `git diff --check` passed.
- All 180 alternating fresh-process benchmark samples matched their semantic outputs.

## Performance and limits

Against the latest official baseline, repeated routes reduced median wall time by **31–48%** and parent peak RSS by **25.9–28.2 MiB**. Repeated reaction edges reduced median wall time by **64–67%**.

The unique/HMM route case ran **12.1% slower** and used **11.1 MiB more** parent peak RSS; mixed/HMM used **11.0 MiB more** parent peak RSS. Sparse and unique/high-degree workloads do not establish a general speedup. The full table includes slower cases.

See [the reproducible benchmark and validation report](https://github.com/hcustc/reacnetgenerator/blob/5ab91b2467b417abda02d4f2f63e574c335e4e6d/benchmarks/route_reaction_aggregation.md) and [all raw samples](https://github.com/hcustc/reacnetgenerator/blob/5ab91b2467b417abda02d4f2f63e574c335e4e6d/benchmarks/route_reaction_aggregation.csv).

The measurements are synthetic stage benchmarks on macOS, not a production or end-to-end trajectory speedup claim. Unique molecule pairs, distinct reaction edges, and indivisible atom routes can still grow with the input. Linux CI has not completed at PR creation, and no dedicated Linux baseline/candidate pipeline comparison is claimed.

Coding agent: Codex
Codex version: codex-cli 0.165.0-alpha.1.2
Model: gpt-6-astra
Reasoning effort: xhigh

<!-- This is an auto-generated comment: release notes by coderabbit.ai -->

<!-- coderabbit-ai-generated:v1 -->

## Summary by CodeRabbit

* **Performance**
  * Route and reaction processing now aggregates repeated transitions more efficiently, reducing the need to retain event-level data in memory.
  * Route output can be buffered by byte size as well as by record count, helping bound memory use for large outputs.
* **Documentation**
  * Added benchmark guidance and measurements for route and reaction workloads, including correctness checks and platform caveats. Results are limited to the synthetic workloads tested.

<!-- end of auto-generated comment: release notes by coderabbit.ai -->

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `ecca5231abcb`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.