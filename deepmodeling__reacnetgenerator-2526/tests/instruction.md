# Issue

**Title:** perf: cache immutable native event participant metadata

## Description

Native timeline output repeatedly rebuilds a species index and rereads immutable molecule definitions/range pages for reaction participants. Cache the species index, atom/bond arrays and small per-molecule range windows inside one open file. Validation creates fresh range state over stored bytes.

Atom/bond arrays retain at most 8 MiB across 8192 entries; oversized definitions bypass the cache. Range data retains at most 1 MiB of shared blocks plus 4096 windows of up to 64 intervals (4 MiB), and 4096 ID bounds. Python headers, the species-name index and temporary arrays are additional. Window gaps/unknown edges fall back correctly; per-event presence, overlap, atom conservation, species, bond-change and aggregate checks remain in place. The schema, scientific identity rules and worker policy are unchanged.

Three alternating fresh-process pairs on the same Linux host/dependencies/native extension, 32 requested processes, CPUs 0–31 and one native math thread:

| Full DETECT→MATRIX workload | Official ffefc395 median | Candidate median |
| --- | ---: | ---: |
| 201 frames, miso=0, HMM off | 55.520 s | 20.889 s |
| 5001 initial frames, miso=1, HMM off | 53.576 s | 51.094 s |
| 5001 middle frames, miso=1, HMM on | 33.256 s | 33.898 s |

The dense window improves 2.66×; the sparse-HMM control observes 1.9% more time. Imports, initialization/input preparation and subsequent validation/indexing are outside timing. Separate 201-frame audits observed 1242.2→1523.7 MiB peak process-tree PSS, so no small-window memory improvement is claimed.

A separate single 5001-frame dense pair, 32 requested processes and CPUs 32–47 for both versions, observed candidate 459.054 s versus deployed fork 708.967 s; PSS was 2748.7 versus 2732.7 MiB. The fork has another native schema/identity conventions and is a contextual production control. These are window measurements with concurrent acceptance work, not a complete-trajectory or cross-platform guarantee.

Validation:

- Full suite at `db2719f`: **769 passed**, 5 skipped, 6 xfailed, 3 non-strict XPASS (`python -m pytest -q` from the repository root in the pinned environment). The earlier 763 count predates six interval-window tests.
- Review follow-up: **123 targeted cases pass**, including 13 additional benchmark/invalid-species-index cases; a real `spawn` CLI run with a nonzero frame offset also validates. The benchmark records requested and effective parameters separately and publishes measurements only after native validation.
- Ruff 0.17.2 and configured ty 0.0.15 pass.
- All nine matched official/candidate pairs pass native validators and preserve 12 fingerprints of exact graphs/names, intervals, populations and reaction evidence after internal-ID normalization.
- The final 5001-frame output independently passes full native validation and preserves all 2,239,475 event instances against unmodified official output. Interpretation metadata and shapes/dtypes also agree. Internal species/molecule IDs can be renumbered between runs; trajectory atom indices, bond orders and times remain exact.
- Downstream native-to-index acceptance checks all 82,001 dense201 candidate events, atom/bond/time evidence, continuity, abundance and trajectory mappings; online queries work without rereading the native source. The official large reference was independently checked through all 2,239,475 events.

[Methods, controls and reproduction](https://github.com/hcustc/reacnetgenerator/blob/perf/cache-native-participant-metadata/benchmarks/native_participant_metadata.md), [24 timing/audit samples and source hashes](https://github.com/hcustc/reacnetgenerator/blob/perf/cache-native-participant-metadata/benchmarks/native_participant_metadata_timings.csv), [standalone bounded-window benchmark](https://github.com/hcustc/reacnetgenerator/blob/perf/cache-native-participant-metadata/benchmarks/native_participant_metadata.py).

Raw production trajectories, HDF5 outputs and derived indexes are not included. The 250001-frame production trajectory has not been rerun.

<!-- This is an auto-generated comment: release notes by coderabbit.ai -->

<!-- coderabbit-ai-generated:v1 -->

## Summary by CodeRabbit

* **Performance**
  * Timed-output validation can handle repeated participant and range lookups more efficiently, while retaining existing validation checks and event ordering.
* **Documentation**
  * Added guidance on validation behavior and cache limits, plus benchmark results and instructions for reproducing performance measurements.
* **Benchmarking**
  * Added a tool to measure native-output pipeline timing on a selected trajectory window and publish results only after validation succeeds.

<!-- end of auto-generated comment: release notes by coderabbit.ai -->

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `ffefc395caaf`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.