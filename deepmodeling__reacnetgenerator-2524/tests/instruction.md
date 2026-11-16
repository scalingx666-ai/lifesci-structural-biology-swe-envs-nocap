# Issue

**Title:** perf: reduce long-signal HMM transport overhead

## Description

Long HMM signals currently travel in 100-record pool chunks, retaining large input/result batches. Per-record scheduling needs to preserve the old maximum prediction concurrency and avoid carrying the full RNG context through worker initialization.

For at least 100,000 analyzed frames, cap effective workers at `min(nproc, ceil(record_count / 100))`; run one effective worker locally. Fork/spawn pools initialize only the actual model, frame count and output flags, then admit at most twice the effective worker count in individual records. Forkserver retains 100-record chunks because the per-record runner regressed in repeated measurements; its chunk callable also carries only prediction state. Later stages keep the requested `nproc`. Shared conversion logic preserves model state, filtering rules and aligned definition/signal tuples. All result iterators are closed explicitly, so output failure terminates and joins the pool even when an exception traceback stays alive; this also covers the forkserver fallback and short-signal pools.

Performance measurements at `f840e83` against official `f213256` use three alternating fresh-process pairs per row on one Linux host (HMM medians in seconds). The subsequent iterator-cleanup change does not alter prediction or scheduling and was not used to regenerate these samples:

| Workload | Base | Candidate | Change |
| --- | ---: | ---: | ---: |
| fork, 100k frames, 400 records, 4 requested | 0.963 | 0.859 | -10.7% |
| spawn, 100k frames, 400 records, 4 requested | 2.799 | 2.168 | -22.5% |
| forkserver, 100k frames, 400 records, 4 requested | 2.817 | 2.235 | -20.7% |
| fork, 1M frames, 400 records, 32 requested | 9.508 | 7.250 | -23.7% |
| fork, 10k frames, 40 records, 4 requested | 0.074 | 0.082 | +10.6% |

Both versions use identical Python 3.12.12 dependencies/native extension, CPUs 0–31 and one native math thread. Fixtures construct real RNG objects including frame-sized timestep metadata. Preparation, input warming and validation are outside the timer. The short control and all other controls are retained; no universal or full-production-trajectory speedup is claimed. Forkserver total times vary across independent reviews, so its recorded fixture samples do not establish a stable speedup for that start method.

The state-only initializer fixes the reviewed spawn/forkserver startup regression at `6a5e61e`. An intermediate initializer-only fix still regressed with forkserver per-record transport; the final chunk fallback addresses that remaining overhead. [Review-stage measurements](https://github.com/hcustc/reacnetgenerator/blob/8ec88ee5e98f565eeb4fd4693c6acb11760bbc41/benchmarks/hmm_worker_state_review.csv) retain the rejected intermediate design separately. The fork/spawn initializer is 809 bytes on both 100k- and 1M-frame probes, down from about 744 KB and 9.75 MB. The admission bound applies to fork/spawn pools, not forkserver chunks or total memory.

Validation:

- 704 non-GUI tests pass; 6 GUI deselected, 6 xfailed, 3 non-strict XPASS. Twenty-nine scheduling cases cover fork/spawn/forkserver, output flags, boundaries, the chunk fallback, reordering/failures, payload bounds and modified model state with unrelated unpicklable RNG metadata. Four failure cases explicitly retain the traceback while checking that no pool workers remain.
- All 42 final speed samples and four separate queue/memory audits preserve aligned definition/signal fingerprints.
- At `f840e83`, 14 integration outputs passed native validation and seven pairs preserved exact evidence. This cleanup follow-up adds two 100k-frame / 240-record comparisons against `f840e83` (spawn / `miso=2`, forkserver / `miso=1`): all four outputs pass native validation and both pairs preserve exact evidence. The result JSON now records `method` and `miso` alongside `nproc`.
- Pre-commit and `ty==0.0.15` pass. A full benchmark smoke run verifies JSON output with `affinity: null` when `os.sched_getaffinity` is unavailable.

[Method and reproduction](https://github.com/hcustc/reacnetgenerator/blob/8ec88ee5e98f565eeb4fd4693c6acb11760bbc41/benchmarks/hmm_signal_window.md), [final speed samples](https://github.com/hcustc/reacnetgenerator/blob/8ec88ee5e98f565eeb4fd4693c6acb11760bbc41/benchmarks/hmm_signal_window_timings.csv), [queue/memory audits](https://github.com/hcustc/reacnetgenerator/blob/8ec88ee5e98f565eeb4fd4693c6acb11760bbc41/benchmarks/hmm_signal_window_memory.csv), [integration samples](https://github.com/hcustc/reacnetgenerator/blob/8ec88ee5e98f565eeb4fd4693c6acb11760bbc41/benchmarks/hmm_signal_window_integration.csv).

<!-- This is an auto-generated comment: release notes by coderabbit.ai -->

<!-- coderabbit-ai-generated:v1 -->

## Summary by CodeRabbit

* **New Features**
  * HMM filtering now limits worker counts and in-flight tasks for large signals, helping manage parallel processing and memory use.
  * Added benchmark tools to measure HMM filtering time, process-tree memory, pipeline performance, and kernel timings, with results available as JSON.
* **Documentation**
  * Added guidance on HMM scheduling, benchmark measurements, memory and queue audits, correctness checks, and steps to reproduce the reported results.

<!-- end of auto-generated comment: release notes by coderabbit.ai -->

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `f213256926e1`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.