# Issue

**Title:** Fix folding exports to match analysis and selected-sample confidence

## Description

Refolded CIFs could contain a different sample from the one analyzed and attach sample-zero pLDDT to a nonzero sample’s coordinates. Rank exports with the same design-to-target iPTM/design pTM score as analysis, and select coordinates and confidence together while retaining every sample in the NPZ. Preserve unmasked molecule identities when the model masks its input, and explicitly distinguish token and atom confidence, including equal-sized padded arrays. Required ranking scores now survive optional output-key configurations.

Thanks to @jdm224 for the original sample-selection fix in , and to @fnachon for the selected-sample confidence fix in  and the related sample-selection fix in . This replacement builds on their contributions.

Handle folding and affinity failure/skip results before accessing missing data or writing files. Honor the analyzer’s success/skip return before loading validation metrics. Stop refolding validation after an unsuccessful fold, prevent affinity status from suppressing successful folding, and enable confidence in the training refolding configuration that requests confidence metrics. Empty refolding epochs log zero accepted targets after the distributed gather. Optional novelty analysis handles empty inputs and Foldseek queries without hits, including pandas 3 string columns. Refolded novelty writes to the same per-rank directory that validation reads.

Publish the folding NPZ atomically after closing the matching CIF, and require both files before `--reuse` skips either folding mode. Interrupted writes and old orphan outputs are retried. Preparing a new result leaves an existing complete pair intact until publication begins, including with a separate output root. Publish affinity archives atomically as well, preserving a valid old result if replacement fails.

Validation: the final full suite has 383 passes and 18 dependency/asset skips. The completion regressions pass on Gemmi 0.6.5 and 0.7.5. The 129 export/validation regressions use real collation, masking, confidence heads, structure reconstruction, NPZ analysis, CIF parsing and reuse discovery; trained forward and external asset boundaries are controlled. The publication matrix had 20 failures and 12 passing controls before repair, then all 32 passed. Four affinity interruption cases also fail before repair and pass afterward. Independent deep review uses Astra, Luna, Terra, Sol, and actual Claude Code Opus 5.5; all final fix rechecks are complete with no outstanding confirmed findings. Real process-kill checks verify incomplete archives remain retryable and failed affinity overwrites preserve old results. Real two-process Gloo checks cover empty/mixed-success epochs and rank-isolated novelty. All four replacement branches combine with 523 tests passing on each Gemmi version. No trained-checkpoint or GPU inference was run. A failed required affinity prediction keeps its folding CIF but is excluded from ranking until a successful retry.

. . Replaces #128 and #269 (also covers #253). Includes the confirmed adjacent export and validation defects found during review.

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `bc69ea045030`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.