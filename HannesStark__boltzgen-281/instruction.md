# Issue

**Title:** Correct independent filter rules and affinity score penalties

## Description

An early failed filter hid later successes from `num_filters_passed`, making partial-pass ranking depend on rule order. Repeated thresholds on one feature also overwrote the same flag, so eligibility, score penalties and reported counts could reflect the wrong threshold.

Thanks to @chAwater for the original independent filter-count and duplicate-metric fixes in , and to @fnachon for the related fixes in  and . This replacement builds on their contributions.

Count each rule independently, require every rule for eligibility, and keep per-feature output flags as conjunctions. Evaluate penalties and PDF counts per rule. Also supply the missing target-alignment threshold, initialize empty-rule evaluator outputs, and remove the duplicate `ligand_iptm` registry entry.

Review found two inherited affinity-score defects. Failed rules now worsen negative composite scores (×10) while preserving the existing nonnegative penalty (×0.1). This is a heuristic correction, not a new empirical calibration; default ranking does not use this composite. Load the unchanged normalization JSON through package resources and include it in wheels so affinity scores are computed outside the source checkout. Preserve fraction-length exemptions and the polymer scoring path.

Validation: 34 focused regressions pass, including actual CSV/ranking/penalty paths and execution outside the checkout. Four new repair cases fail against the preceding implementation with 30 controls passing. Full suite: 288 passed, 18 dependency/asset skips. Independent before/after wheel builds verify resource inclusion and actual score computation. Combined with the other three replacement PRs: 532 passed, 18 skipped on both Gemmi 0.6.5 and 0.7.5. Test lint/format and diff checks pass; inherited source diagnostics decrease. No model inference was run.

. . Replaces #203; covers #252 and #248.

Five independent deep reviewers (Astra, Luna, Terra, Sol and actual Claude Code Opus 5.5) completed both initial reviews and final repair verification. All confirmed in-scope findings are fixed; the final reports found no remaining confirmed defect. Parent reproductions, design review and combined integration checks are complete.

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `bc69ea045030`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.