# Issue

**Title:** Fix scaffold-inclusive SASA and preserve partially resolved residues

## Description

Partially redesigned chains previously ignored contacts made by their fixed scaffold when computing interface SASA. Include all present atoms of designed chains and their covalently connected components in both original and refolded calculations, preserving the target-selection options and metric names. Return zero areas for a genuinely empty target. This intentionally changes SASA values and rankings for partial-chain designs; existing normalization constants are unchanged.

Thanks to @fnachon for the original complete-chain SASA fix in . This replacement builds on that contribution and extends its coverage to the additional issues found during review.

Preserve residues with any resolved atom when rebuilding a Structure from model features. A missing CA or first atomized ligand token no longer drops other valid atoms from refold export and breaks SASA mask alignment. Select target SASA atoms by target membership and actual atom presence too: representative-atom completeness previously discarded partially observed targets and could create a false interface in symmetric redesigns. Keep existing token-resolution and RMSD masks unchanged.

Validation: 283 tests passed, 18 dependency/asset skips. The 29 SASA integration cases use real parsing, featurization, export, analysis and Biotite calculations. Four new target-presence cases fail against the preceding implementation with 25 controls passing, including a distant-design case whose correct burial is zero. Combined with the other three replacement PRs, 528 tests pass on both Gemmi 0.6.5 and 0.7.5. Changed tests pass Ruff and formatting; inherited source diagnostics decrease. No trained-checkpoint or GPU inference was run.

. Replaces #250.

Full independent deep review is complete: Astra, Luna, Terra, Sol and actual Claude Code Opus 5.5 each reviewed the PR and verified the final repair. All confirmed in-scope findings are fixed.

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `bc69ea045030`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.