# Issue

**Title:** perf: cache bounded range reads during timeline evidence checks

## Description

Writing transition evidence repeatedly binary-searches HDF5 molecule-range columns, performing one scalar read per comparison. Add a writer-owned LRU of contiguous blocks while retaining the same search and presence checks. The three columns share at most 1 MiB of int64 data (plus small object headers); blocks are evicted before reading, and the cache is discarded before file close. The independent validator continues to use the original scalar lookup.

Based on official `master` at `2d6c88b`. Production changes are limited to `_timedoutput.py` and `_timedoutputrange.py`; naming, isomer selection, scheduling and the output schema are unchanged.

Matched Linux measurements use identical dependencies, 32 workers, HMM off and `miso=1`. Each window contains 5,001 frames / 2,600 atoms; values are medians of three alternating fresh-process pairs:

| Window | Base DETECT–MATRIX | Cached | Change |
| --- | ---: | ---: | ---: |
| Early | 48.690 s | 42.081 s | −13.6% |
| Middle | 57.870 s | 51.535 s | −10.9% |

Step 3 decreases from 24.246 to 17.724 s and from 30.291 to 23.581 s. Parent peak RSS medians increase by 2.8 / 1.1 MiB; the cache budget bounds retained arrays, not total process RSS. Isolated queries improve for both real tables and the repeated/random controls; the small control differs by about 0.13 ms. Pipeline measurements cover warm bounded windows on one host. The historical isolated real-file query samples did not explicitly pre-read the HDF5 input before every process; the reproduction commands now include this step, and the CSV samples remain as recorded.

Validation:

- Full non-GUI suite: 643 passed, 6 GUI deselected, 6 xfailed and 3 non-strict XPASS.
- 14 pipeline outputs pass the native validator; all 7 pairs preserve exact names, structures, ranges, populations, counts and transition evidence after normalizing internal IDs/table order.
- All 30 query timing runs and 4 separate read audits match the scalar oracle. New tests cover empty/missing/gapped ranges, endpoints, shared capacity, LRU eviction, isolation, read failures and atomic rollback when a warmed cache encounters an absent participant.
- Full repository pre-commit hooks and `ty==0.0.15` pass.

[Benchmark report and reproduction commands](https://github.com/hcustc/reacnetgenerator/blob/e7909556aced9212f05a101a0dfe9ca1e26747cd/benchmarks/timeline_range_cache.md), [raw pipeline samples](https://github.com/hcustc/reacnetgenerator/blob/4bcffeb39458154aebca5abd42726b031902c5be/benchmarks/timeline_range_cache.csv), and [query measurements / separate audits](https://github.com/hcustc/reacnetgenerator/blob/4bcffeb39458154aebca5abd42726b031902c5be/benchmarks/timeline_range_cache_queries.csv).

<!-- This is an auto-generated comment: release notes by coderabbit.ai -->
<!-- coderabbit-ai-generated:v1 -->

## Summary by CodeRabbit

* **Performance**
  * Reduced repeated data reads during reaction-output generation with a bounded cache reused across molecule-presence checks.
* **Reliability**
  * Invalid reaction events continue to fail clearly without replacing existing output with incomplete data. Failed range reads can be retried.
* **Benchmarking**
  * Added reproducible comparisons of cached and reference queries, with correctness checks, memory measurements, and read-count metrics. Results distinguish fewer software-level calls from physical I/O or overall speed improvements.
<!-- end of auto-generated comment: release notes by coderabbit.ai -->

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `2d6c88b02242`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.