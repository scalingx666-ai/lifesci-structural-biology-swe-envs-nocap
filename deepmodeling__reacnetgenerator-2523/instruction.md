# Issue

**Title:** perf: keep medium SMILES inputs batched with more fork workers

## Description

With 4,509 molecule records, requesting 32 fork workers selects per-record SMILES transport because the batching threshold rises to 8,192 records. The same input with four workers uses batches. Per-record tasks repeatedly serialize the collector and its atom metadata.

Cap fork admission at `256 * min(nproc, 4)` records for `nproc > 1`, preserving the existing two/four-worker thresholds. The requested pool size, batch budgets, singleton/spill handling and ordered results are unchanged. Spawn/forkserver keep their existing admission thresholds; single-process execution stays local. Production changes are confined to `_should_batch_smiles`.

Matched measurements against official master `1d3a23a`, on one Linux host with identical dependencies/native extension, CPUs 0–31 and native math threads limited to one:

| Measurement | Base | Candidate | Change |
| --- | ---: | ---: | ---: |
| Early fixed-record naming, 4,509 records | 2.598 s | 0.703 s | −72.9% |
| Early complete pipeline, 5,001 frames | 42.182 s | 38.451 s | −8.8% |
| Middle fixed-record naming, 9,918 records | 7.322 s | 7.317 s | −0.1% |
| Middle complete pipeline, 5,001 frames | 49.190 s | 49.564 s | +0.8% |

Pairs alternate AB/BA with explicit input warming before each fresh process. Naming and early pipeline results use three pairs. The middle pipeline was extended from three to five pairs after the initial +1.6% result; all samples are retained. Its final timing ranges overlap (48.679–49.967 / 48.795–50.608 s), and its scheduling is unchanged. This is not a universal speedup. Middle parent / largest-child peak RSS medians increase by about 1.3 / 6.1 MiB; these are separate process peaks, not total memory.

Separate IPC audits reduce early task count from 4,509 to 170 and application task serialization from 201.4 MB to 10.4 MB. The middle stream retains identical task counts and byte totals. Synthetic repeated, mixed-size and large-result controls cover the newly admitted range; the large-result case exercises disk spill. Single-pair unchanged-path controls, including a +9.4% observation at two workers, are reported without performance claims.

Validation:

- 675 non-GUI tests pass; 6 GUI deselected, 6 xfailed and 3 non-strict XPASS. Fifteen added cases cover admission boundaries, spawn/forkserver guards, requested pool size and exact names/timeline rows for `miso=0/1/2`.
- All 60 timing samples and 10 separate audits preserve exact ordered output fingerprints.
- All 24 complete-pipeline outputs pass native validation; all 12 pairs preserve exact labels, definitions, ranges, populations, reaction counts and transition evidence after internal ID/table-order normalization. HMM controls include a 1,072-record middle input that actually enters the new batching path.
- Full pre-commit checks, pinned `ty==0.0.15`, and a standalone benchmark-helper smoke run pass.

[Report and reproduction](https://github.com/hcustc/reacnetgenerator/blob/0e32f316d00e65cacb69518b5be67e3ade0973b9/benchmarks/fork_smiles_admission.md), [pipeline samples](https://github.com/hcustc/reacnetgenerator/blob/0e32f316d00e65cacb69518b5be67e3ade0973b9/benchmarks/fork_smiles_admission_pipeline.csv), [naming samples](https://github.com/hcustc/reacnetgenerator/blob/0e32f316d00e65cacb69518b5be67e3ade0973b9/benchmarks/fork_smiles_admission_names.csv), and [IPC audits](https://github.com/hcustc/reacnetgenerator/blob/0e32f316d00e65cacb69518b5be67e3ade0973b9/benchmarks/fork_smiles_admission_audit.csv).

<!-- This is an auto-generated comment: release notes by coderabbit.ai -->

<!-- coderabbit-ai-generated:v1 -->

## Summary by CodeRabbit

* **Performance**
  * Fork-based SMILES processing now begins batch admission at 256 records per worker, capped at 1,024 records. Spawn and forkserver thresholds remain unchanged.
* **Documentation**
  * Added benchmark guidance, methodology, results, correctness checks, and reproduction instructions for fork-based batch admission. Also clarified which historical measurements used the previous threshold.

<!-- end of auto-generated comment: release notes by coderabbit.ai -->

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `1d3a23a88d5c`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.