# Issue

**Title:** fix: exclude macrocycle glue pairs from the reported affinity (#102/#192)

## Description

## Summary

Macrocycle ligands prepared with Meeko (CG/G "glue" ring-closure atoms) produced wildly wrong, non-reproducible affinities — e.g. **−104 instead of ~−6**, ranging across tens-to-hundreds of kcal/mol between runs (#102, #192; related #37).

**Root cause:** the reported affinity is `inter + intra − intramolecular_energy`. The bound `intra` (`model::evali`) excludes the glue ring-closure pairs, but the unbound reference (`model::eval_intramolecular`) **included** them. So the glue energy didn't cancel and leaked a large spurious term into the affinity — the glue atoms overlap when the ring is closed, so the standard Vina repulsion makes that term huge (UNBOUND **+250** vs AutoDock's **−1.2**).

**Fix:** exclude `glue_pairs` from `eval_intramolecular`, matching the glue-free bound `intra` and AutoDock Vina's convention. Glue is a sampling artifact used only to close a broken ring during optimization — it stays in `eval_deriv` (the BFGS gradient), just not in the reported score.

## Verification (B200, the #102 reporter's receptor + ligand)

| | broken `main` | **this PR** | AutoDock Vina |
|---|---|---|---|
| VINA RESULT | −104 | **−0.84** | −6.04 |
| UNBOUND | +145…+250 | **31.6 (= INTRA, cancels)** | −1.2 (= INTRA) |
| spread over seeds 5/7/99 | −61 / −104 / −127 (~66 kcal) | **−0.84 / +1.0 / −0.82 (~2 kcal)** | — |

- UNBOUND now equals INTRA and cancels, exactly as AutoDock does (its UNBOUND==INTRA) → affinities are sane and reproducible (same-seed deterministic).
- **No regression:** bit-identical to current `main` on the Astex molecular-docking set (max \|Top1 RMSD diff\| = 0.000). The change is a no-op for non-macrocycle ligands (`glue_pairs` is empty).

## Out of scope (separate follow-up)

The absolute affinity (−0.84) is still weaker than AutoDock's (−6.04) because Uni-Dock's **sampling** finds a weaker pose (INTER −1.6 vs −11.3); improving the glue handling during the GPU search so the ring closes as well as AutoDock is a sampling-quality follow-up. This PR fixes the catastrophic scoring/reproducibility bug.

. Related: #37.

🤖 Generated with [Claude Code](https://claude.com/claude-code)

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `926d6958a913`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.