# Issue

**Title:** Enabling automatic param/top generation for ligands embedded in a larger system and multiple ligands

## Description

## What does this PR do and why?

topoaa's autotoppar path calls libligand.run_prodrg(model, ...) on the entire PDB. When an unknown ligand is embedded in a larger system (protein/ligand complex, or e.g. a protein in a membrane with many lipid copies), PRODRG received the whole system and failed to generate topology/parameter files.

`src/haddock/libs/libligand.py` was modified to deal with this cases.

  1. New extract_ligand() — strips out everything except the requested ligand residues, and keeps only the first copy of each residue name (a ligand present in N copies, e.g. 434× DPP, shares one topology, so only one copy is sent to PRODRG).
  2. Refactored run_prodrg() — now accepts ligand_resnames:
    - Extracted the single-molecule PRODRG execution into a _run_prodrg_single() helper.
    - When multiple distinct ligands are present (e.g. DPP + DPC), PRODRG runs once per ligand and the resulting .top files are concatenated into one, and the .param files into one.
    - De-duplicates resnames so a repeated ligand triggers a single run.
    - With ligand_resnames=None, behavior is unchanged (whole file → PRODRG).
  3. topoaa/__init__.py — passes the already-computed unknown resnames into run_prodrg(..., ligand_resnames=unknown).
  4. to avoid overlap in parameters, each ligand parametrised receives a unique one character identifier (also not overlapping with what is used in `cofactors.top`. This uses the CNSSEP option of PRODRG
  5. modified the haddock3-score cli to have autotoppar=true by default in order to be able to handle ligands.
  Verification

  - Added tests in tests/test_libligand.py (extraction, single-copy, complex success, multi-ligand concatenation, dedup) — 22 passed, ruff clean, topoaa tests still pass.
  - CHANGELOG.md updated.

## How was this tested?

Tested using examples of proteins contain a ligand (e.g. 1AZS_l_u.pdb from the BM5 benchmark).

## AI assistance

Claude was used to modify the ligand handling machinery and add tests.

## Checklist

- [X] Tests cover the new and/or changed code
- [ ] Documentation updated if needed (also in the [haddock3 user-manual](https://github.com/haddocking/haddock3-user-manual)
- [X] `CHANGELOG.md` updated for user-facing changes

## Related issues

#1645

## Notes for reviewers

You can test it using for example haddock3-score

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `ec2d18784854`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.