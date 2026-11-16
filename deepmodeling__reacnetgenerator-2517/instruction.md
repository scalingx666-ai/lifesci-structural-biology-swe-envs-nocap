# Issue

**Title:** perf: avoid single-worker pools in SMILES and HMM processing

## Description

With `nproc=1`, SMILES conversion and enabled HMM filtering still start worker pools and serialize records between processes. Run these two stages lazily in the caller instead, preserving ordered names, global-frequency representative selection, VF2 fallback identity, and complete molecule/origin/effective-signal pairs. Multi-worker scheduling, no-HMM handling, `run_mp()` and caching behavior stay unchanged.

Compared with upstream `93f17b42`, the measured implementation is `3784c7ad`. Four fresh-process samples per version/configuration ran in alternating AB/BA order on Apple M4/macOS arm64, Python 3.12.7, spawn, `nproc=1`, `miso=0`, with identical dependencies and one BLAS thread. The real input has 5 frames, 12,326 atoms/frame and 5,615 detected molecule records. Names/full runs include the timeline CSV; full runs also write HDF5. The isolated HMM case includes origin output.

| Real-input measurement | Median seconds, base → head | Wall change |
| --- | ---: | ---: |
| SMILES names | 3.8167 → 0.8751 | -77.1% |
| HMM filter | 2.1458 → 0.4264 | -80.1% |
| DETECT → MATRIX, HMM off | 17.6916 → 14.3520 | -18.9% |
| DETECT → MATRIX, HMM on | 18.0629 → 13.5492 | -25.0% |

All 48 real/synthetic samples matched their configured text, official HDF5 manifest, or complete record/signal checks; every full-run HDF5 passed the official validator. See the [reproduction script](https://github.com/hcustc/reacnetgenerator/blob/673e08d8508c3657a10bd0c2e7e67980403746c1/benchmarks/single_process.py), [all raw samples](https://github.com/hcustc/reacnetgenerator/blob/673e08d8508c3657a10bd0c2e7e67980403746c1/benchmarks/single_process.csv), and [CPU/RSS measurements and timing ranges](https://github.com/hcustc/reacnetgenerator/blob/673e08d8508c3657a10bd0c2e7e67980403746c1/benchmarks/single_process.md). Desktop load caused visible timing variation, and Linux/Windows/HPC performance was not measured. These are this patch's uncached results, not the earlier local-execution-plus-cache prototype results.

Validation:

- Focused isomer/aromatic/molecule-presence/timed-output regressions: 202 passed, including no-pool checks at real entry points, actual `nproc=2` calls, `miso=0/1/2`, fallback identity, empty streams, HMM options and failure-time file closure.
- Full non-GUI run: 556 passed, 9 skipped, 6 deselected, 6 xfailed and 3 non-strict XPASS. Five existing socket reducer tests hit sandbox `Operation not permitted`; all five passed on a targeted rerun outside that sandbox (561 passing tests in total).
- Full repository pre-commit hooks and changed-file hooks passed; pinned `ty==0.0.15` passed; wheel/native-extension/webpack build passed.

```text
Coding agent: Codex
Codex version: codex-cli 0.165.0-alpha.1.2
Model: gpt-6-astra
Reasoning effort: xhigh
```

<!-- This is an auto-generated comment: release notes by coderabbit.ai -->

<!-- coderabbit-ai-generated:v1 -->

## Summary by CodeRabbit

* **Performance**
  * Runs SMILES conversion and HMM filtering directly in the current process when configured for one process. Multi-process behavior remains unchanged.
* **Documentation**
  * Added a benchmark guide with measured results, validation details, and limitations.
* **New Features**
  * Added a command-line benchmark for measuring pipeline stages and recording timing, environment, and output details.

<!-- end of auto-generated comment: release notes by coderabbit.ai -->

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `93f17b42b984`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.