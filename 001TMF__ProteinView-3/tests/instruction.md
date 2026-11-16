# Issue

**Title:** feat: structural analysis features — SS inference, pLDDT coloring, mirroring fix, sheet guides

## Description

## Summary

- **Fix mirrored projection** — negate X in camera `project()` so L-amino acids render correctly. Compensating rotation direction fixes included.
- **Infer secondary structure from coordinates** — DSSP-style H-bond energy calculation for AlphaFold/computed models lacking HELIX/SHEET records. Includes phi/psi torsion filtering, gap-filling, min-run-length enforcement, and 5.2Å N...O pre-filter. Skips RNA/DNA and chains with existing SS.
- **pLDDT confidence coloring** — Standard AlphaFold 4-band color scheme (dark blue ≥90, light blue ≥70, yellow ≥50, orange <50). Auto-detects AF models via B-factor heuristic. Ligands fall back to structure-mode colors. CLI `--color plddt` support.
- **Beta sheet frame guides** — Uses carbonyl C→O direction to orient sheet ribbons instead of pure parallel transport. 65/35 blend with sign coherence alignment. Coil/helix regions unaffected.

## Stats

- **+1,447 lines** across 9 files
- **25 new tests** (90 total, all passing)
- **0 new clippy warnings**

## Test plan

- [x] `cargo test` — 90 passed, 0 failed
- [x] `cargo clippy` — only pre-existing warnings in framebuffer.rs
- [ ] Visual verification: load AlphaFold PDB (no HELIX/SHEET) → ribbons should show inferred helices/sheets
- [ ] Visual verification: pLDDT coloring on AF model → blue/yellow/orange bands visible
- [ ] Visual verification: known chiral structure → correct handedness (not mirrored)
- [ ] Visual verification: beta sheets → flat ribbon orientation consistent, no flipping

🤖 Generated with [Claude Code](https://claude.com/claude-code)

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `47b1445c0e8b`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.