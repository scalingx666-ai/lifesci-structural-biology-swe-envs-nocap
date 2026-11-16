# Issue

**Title:** Fixes issue #1636 - chirality detection

## Description

## What does this PR do and why?

The `generate_topology.cns` script from the `topoaa` module was modified to always keep the HA proton, even when non-polar hydrogens are deleted (default behaviour). In this way the improper angle used to check the chirality (L/D) is always defined.

Integration test add with a peptide containing two D-amino acids. Checks if the generated PDB contains D-amino acid detection statements.

## How was this tested?

By running: `haddock3-score --outputpsf PPCIVSMLPPDFLYAYS.pdb`

and checking that the generated psf file contains the D-amino acid detection statements:

```
; FILENAME="PPCIVSMLPPDFLYAYS7ozlundp_haddock.psf"
  D-amino acid detected for PRO 1 of chain A
  D-amino acid detected for PRO 9 of chain A
  DATE:31-Jul-2026  10:50:12       created by user: unknown
  VERSION:1.3U
;
```

## AI assistance

To generate the integration test

## Checklist

- [X] Tests cover the new and/or changed code
- [ ] Documentation updated if needed (also in the [haddock3 user-manual](https://github.com/haddocking/haddock3-user-manual)
- [X] `CHANGELOG.md` updated for user-facing changes

## Related issues

#1636

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `ce5f1b2c02b3`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.