# Issue

**Title:** fix multi chain alignment mapping

## Description

- Fix structural alignment (molTMalign) of multi-chain proteins where chains appear in different order between the two structures
  - Previously, proteins were always aligned by chains order (A→A, B→B), producing wrong results when the correct mapping is e.g. A→B, B→A (common with homodimers or differently labeled structures)
  - Add optimal chain-to-chain matching using the Hungarian algorithm on per-chain-pair Kabsch RMSD of CA atoms, then reorder mol's atoms to match ref's chain order before calling TM-align
  - Single-chain proteins are unaffected (mapping step is skipped)
  - Add scipy as a direct dependency (already a transitive dep via mdtraj)

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `2f6dbcfee412`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.