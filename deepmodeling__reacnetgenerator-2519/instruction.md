# Issue

**Title:** perf: bulk append numeric columns in timed output

## Description

Large molecule definitions and fragmented presence histories make one Python
append call per numeric value. Fill the existing timed-output column buffers
from bounded integer-array slices and interval batches, retaining scalar writes
for records shorter than 32 values.

Based on official `master` at `454d30816fda486d702a82df4ec3b59fa01d8d38`
(merged #2518). Production changes are confined to `_timedoutput.py`.

- Preserve schema 1.1 signed little-endian int64, aligned columns and offsets,
  molecule/range order, maximal intervals, and atomic `.incomplete` publication.
- Retain each column's existing 8,192-row/1 MiB encoded-byte limits; range
  scratch chunks contain at most 4,096 intervals with default limits. Release
  scratch between chunks and decoded structure arrays before range writing.
- Validate bulk shapes/dtypes and unsigned overflow before narrowing. A failed
  later block can leave a prefix in the private incomplete file; the previous
  published file remains untouched.

This adds no evidence/name cache, reader or manifest changes, multiprocessing
policy, or schema migration. Encoded column limits and bounded scratch are not
a total-RSS cap: caller-owned arrays, Python objects and HDF5 caches remain.

Validation:

- macOS full non-GUI suite: 613 passed, 9 skipped, 6 deselected, 6 xfailed and
  3 non-strict XPASS; Linux timed-output/validation suite: 111 passed.
- The 28 new cases cover empty/single/large inputs, partial/cross-boundary
  batches, strided and non-native-endian arrays, invalid values, overflow,
  offsets/alignment, HMM effective ranges, bounded iteration, array lifetime,
  and failures preserving an existing published file.
- Final macOS wheel and both Linux native editable builds passed.
- Full repository and changed-file pre-commit hooks, `ty==0.0.15`, and diff
  whitespace checks passed.
- All 224 main timing samples, 80 follow-up samples and 12 separate buffer
  audits passed official HDF5 validation and matched manifests/text hashes
  between variants within each host/configuration.
- For 2,097,152 fragmented ranges, median writer time fell 55.2% on macOS
  and 57.3% on Linux; complete PATH fell 11.6% and 8.4%. The 32,769-atom
  chain writer fell 82.3% and 82.7%. Real-trajectory full-pipeline changes
  ranged from -2.3% to +0.8%; these are not general end-to-end speedups.
- Audited maximum columns remained 8,192 rows / 65,536 encoded bytes, with
  unchanged flush counts. Persistent buffer peaks did not increase; full
  fragmented PATH parent RSS medians rose about 1.4 MiB / 0.7 MiB.

Limitations: the macOS 65,536-range writer was +11.0% initially and +6.8%
(6.9 ms) on repeat. Linux small HMM full-pipeline timing was initially +23.7%
and +6.1% (14.6 ms) on repeat; isolated HMM PATH was +13.9% (8.0 ms), while
its writer was -3.1% (0.2 ms). These unfavorable controls remain in the report.
Their causes are unresolved; this patch does not claim universal non-regression.
Runs used shared hosts and four initial samples per variant, with eight-pair
follow-ups for the unfavorable controls.

See [the benchmark report](https://github.com/hcustc/reacnetgenerator/blob/73a78d7e7d0f2b54b834160338b02bb8438e7118/benchmarks/timed_output_bulk.md)
and its two CSV files for reproduction,
all measurements, buffer accounting and limitations. Stage benchmarks use a
fixed baseline detection stream. Full-pipeline samples start from the real
trajectory; synthetic range/array stresses are ordered table inputs, not
additional chemical observations. All samples use `nproc=1`, with matching
dependencies within each host.

Coding agent: Codex
Codex version: codex-cli 0.165.0-alpha.1.2
Model: gpt-6-astra
Reasoning effort: xhigh

<!-- This is an auto-generated comment: release notes by coderabbit.ai -->

<!-- coderabbit-ai-generated:v1 -->

## Summary by CodeRabbit

* **Performance**
  * Writing timed-output files is faster for large arrays and datasets with many fragmented ranges. Improvements may vary by workload; small and typical real-world cases may see little change.

* **Reliability**
  * Invalid numeric values and malformed bond data are rejected during output generation. If writing fails, an existing destination file is preserved.

<!-- end of auto-generated comment: release notes by coderabbit.ai -->

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `454d30816fda`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.