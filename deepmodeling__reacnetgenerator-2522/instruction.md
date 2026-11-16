# Issue

**Title:** perf: narrow VF2 candidates for isomer grouping

## Description

SMILES-based `miso=1` grouping scans every established structural group with the same formula for each new canonical name. Narrow those candidates using a necessary invariant of the policy-adjusted graph: the multiset of labelled one-hop neighborhoods. Every surviving candidate still goes through the original VF2 comparison; equal keys and hash collisions never establish species identity.

The index starts only after a formula has two distinct structural groups. Unique formulas, repeated variants of one topology and composition-only `miso=2` retain the cheap unindexed path; `miso=0` does not enter merged-name grouping. Representative frequency/tie rules and candidate order are preserved. Production changes are confined to `_path.py`.

Measured against official master `5c278fb`, with identical dependencies/native extension on one Linux host, CPUs 0–31, native math threads limited to one, and three alternating fresh-process pairs:

| Measurement | Base | Candidate | Change |
| --- | ---: | ---: | ---: |
| Middle fixed-record naming, 9,918 records | 9.043 s | 7.345 s | −18.8% |
| Middle complete pipeline, 5,001 frames | 50.266 s | 48.551 s | −3.4% |
| Early fixed-record naming, 4,509 records | 2.680 s | 2.883 s | +7.6% |
| Early complete pipeline, 5,001 frames | 41.977 s | 41.816 s | −0.4%, within run spread |

Separate audits reduce middle grouping VF2 calls from 18,224 to 7,326 (−59.8%). This is not a universal speedup: early naming adds about 0.203 s, the small control adds 0.165 ms and the regular-graph collision control adds 1.037 ms. Parent peak RSS medians increase by about 0.3 / 0.9 MiB. Measurements cover bounded windows; retained dictionaries scale with structural groups and temporary key construction with one molecule.

Validation:

- 660 passing non-GUI cases, 6 GUI deselected, 6 xfailed and 3 non-strict XPASS; strengthened collision fixtures additionally rerun. New cases cover relabelled/shuffled graphs, loops/isolates, all isomer policies, forced hash collisions, non-isomorphic regular graphs, lazy admission, frequency ties and exact name/timeline output.
- 20 pipeline outputs pass native validation; all 10 pairs preserve exact labels, graphs, ranges, populations, counts and transition evidence after normalizing internal IDs/table order. Pilots cover HMM with `miso=0/1` and no HMM with `miso=2`.
- All 54 naming samples and 10 separate call audits preserve ordered name-table and definition-text fingerprints.
- Full repository pre-commit hooks and pinned `ty==0.0.15` pass.

[Report and reproduction commands](https://github.com/hcustc/reacnetgenerator/blob/2ad0b275380e720a78b6be5ddd5e205467b2c82b/benchmarks/isomer_candidates.md), [pipeline samples](https://github.com/hcustc/reacnetgenerator/blob/2ad0b275380e720a78b6be5ddd5e205467b2c82b/benchmarks/isomer_candidates_pipeline.csv), [naming samples](https://github.com/hcustc/reacnetgenerator/blob/2ad0b275380e720a78b6be5ddd5e205467b2c82b/benchmarks/isomer_candidates_names.csv), and [call audits](https://github.com/hcustc/reacnetgenerator/blob/2ad0b275380e720a78b6be5ddd5e205467b2c82b/benchmarks/isomer_candidates_audit.csv).

<!-- This is an auto-generated comment: release notes by coderabbit.ai -->

<!-- coderabbit-ai-generated:v1 -->

## Summary by CodeRabbit

* **Performance**
  * Isomer grouping now narrows the structures compared during matching, which can improve processing speed while preserving molecule names and matching results.
* **Documentation**
  * Added guidance on benchmark scenarios, results, correctness checks, and how to reproduce the benchmarks.

<!-- end of auto-generated comment: release notes by coderabbit.ai -->

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `5c278fbf50f4`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.