# Issue

**Title:** Analyze every designed protein chain with consistent liability defaults

## Description

Multichain analysis currently uses only the first chain for full-chain sequence, liability and some hydrophobicity outputs; another export loop makes designed-region hydrophobicity use the last chain. Preserve chain boundaries through analysis, CSV/pickle export, deduplication, diversity and PDF reporting. Scan full chains independently, retain per-chain metrics and positions, and document explicit aggregation.

Use antibody liability defaults in analysis and reporting for antibody/nanobody protocols, retaining explicit overrides without leaking them into later pipeline instances. Correct overwritten motif counts, repeated-occurrence severity and missing zero-hit fields for scanned chains. Genuinely absent chains keep missing fields. Rerun analysis before comparing or filtering affected fields from older CSVs.

Review repairs preserve valid `NA` sequences through CSV loading/merging, handle unknown-only composition, prepare report sequence views once per cohort, and wrap long liability heatmaps with space for dense legends, without changing scores or positions. Optional CDR import failures skip numbered logos; operational backend errors still propagate. The existing alpaca heavy-chain numbering scope is documented, and ordinary light-chain metrics and plots remain covered. Details: `docs/sequence-analysis.md`.

 and #228. Thanks to @bioermaf and @nicolasboisseau for the reports, and @chr-wn for the original protocol correction in closed, unmerged PR #229. This independently verified implementation extends that correction to reporting and multichain consumers.

Validation at `48b2ed9`: full CPU suite **583 passed, 18 optional dependency/model-asset skips**, including **51 multichain regression cases**. Before/after checks cover real analysis, CSV/NPZ/pickle exports, filtering, actual PDF layout, protocol construction, legacy archives and native recovery. No model inference was run. Changed tests pass Ruff and formatting; source diagnostics remain inherited, with no added diagnostic count in the final repair.

Deep review completed on the final revision with four independent Codex reviewers and an actual Claude initial report. No confirmed in-scope finding remains unresolved. The actual Claude initial pass ran partly on requested Opus5.5, then the provider automatically switched to Opus5 after a safeguard refusal; full requested-Opus5.5 coverage is therefore not claimed. Its findings were independently reproduced and repaired, and final verification was completed by the existing Codex reviewers.

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `2be3b5123e00`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.