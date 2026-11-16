# Issue

**Title:** perf: reuse minimal state for per-record SMILES conversion

## Description

Below the SMILES batching threshold, each ordered task serializes the bound collector, including its RNG owner and frame-sized timestep metadata. Initialize the existing minimal converter once per worker and send a module-level function with the four compressed record blocks instead. Preserve worker counts, batch admission, ordered delivery and the in-flight bound. Custom collectors/callable overrides keep their bound-method path; single-process execution stays local. No name cache is added.

Three alternating fresh-process AB/BA/AB pairs per configuration, against official `dd47d2f`, on the same Linux host/dependencies/native extension, CPUs 0–7 and one native math thread:

| Naming workload (four workers) | Base | Candidate | Change |
| --- | ---: | ---: | ---: |
| fork, 100k-frame metadata, 400 records | 1.9796 s | 0.1416 s | −92.8% |
| spawn, same fixture | 3.9656 s | 0.5608 s | −85.9% |
| forkserver, same fixture | 6.7653 s | 0.9324 s | −86.2% |
| Real fixed window, 4,509 records, spawn | 4.7304 s | 1.5893 s | −66.4% |

Actual protocol-5 application calls shrink from at most 744,849 to 1,025 bytes at 100k frames, and from 9,747,882 to 1,025 bytes at 1M frames. The converter initializer is 1,245 bytes on both probes, excluding common runner/process framing. The single-process control is essentially flat; the unchanged batch path is 10.6 ms slower in median (+7.6%), and the short-input candidate includes one slower outlier. These stage measurements do not establish whole-production-pipeline or cross-platform speedups.

Validation:
- Full non-GUI suite: 749 passed, 6 GUI deselected, 6 xfailed, 3 non-strict XPASS. Forty-five new cases cover real fork/spawn/forkserver pools, `miso=0/1/2`, timeline filters, failed-SMILES/VF2 fallback, representative selection, custom extensions and failure cleanup while tracebacks stay alive.
- All 60 timing samples and 12 separate audits preserve ordered outputs. Ten downstream HDF5 outputs pass native validation; five matched pairs preserve exact species/graphs/ranges/populations/reaction evidence after internal-ID normalization.
- Repository pre-commit hooks, configured `ty==0.0.15`, and the existing SMILES audit benchmark smoke check pass.

[Method, all controls and reproduction](https://github.com/hcustc/reacnetgenerator/blob/073b58015c6ddf1af2d6ccb0f55fb5cc42a58c49/benchmarks/smiles_record_context.md), [timing samples](https://github.com/hcustc/reacnetgenerator/blob/073b58015c6ddf1af2d6ccb0f55fb5cc42a58c49/benchmarks/smiles_record_context_timings.csv), [payload audits](https://github.com/hcustc/reacnetgenerator/blob/073b58015c6ddf1af2d6ccb0f55fb5cc42a58c49/benchmarks/smiles_record_context_audits.csv), [integration checks](https://github.com/hcustc/reacnetgenerator/blob/073b58015c6ddf1af2d6ccb0f55fb5cc42a58c49/benchmarks/smiles_record_context_integration.csv).

<!-- This is an auto-generated comment: release notes by coderabbit.ai -->

<!-- coderabbit-ai-generated:v1 -->

## Summary by CodeRabbit

* **Processing Improvements**
  * Multi-process SMILES conversion now processes individual records in order when batching is not selected. Existing filtering and fallback behavior remain unchanged, including for custom converters and single-process runs.
  * SMILES conversion continues to use the existing batch-processing path when applicable.

<!-- end of auto-generated comment: release notes by coderabbit.ai -->

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `dd47d2fde3d5`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.