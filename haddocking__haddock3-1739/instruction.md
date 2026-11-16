# Issue

**Title:** Remove duplicate PRESidue definitions from carbohydrate.top

## Description

## What does this PR do and why?

`carbohydrate.top` defined `B1S`, `B1SL` and `A1SL` twice (37 → 34 `PRESidue` entries). CNS keeps the first
definition and reports every later one as

    %RTFRDR-ERR: duplicate (P-)RESIdue name B1S
    %RTFRDR-ERR: duplicate (P-)RESIdue name B1SL
    %RTFRDR-ERR: duplicate (P-)RESIdue name A1SL

on every topology read, so each `topoaa` run logged these three errors. The second `B1S`/`A1SL` copies differed from
the first only in whitespace and a `{cns 1.3}` comment. The second `B1SL` copy bonded `-C1` to `+OG1` (Thr) while still
deleting `+HG` and adding an angle through `+OG`, so it could not resolve on either residue; the Thr variant already
exists as `B1TL`. This removes the three second copies and the duplicated `B1S`/`A1S`/`B1SL`/`A1SL` lines in the
REMARKS link list. Pure deletion, −67 lines.

Answer to question 4 in the issue (which copy CNS uses): the first. Details below.

## How was this tested?

- CNS 1.3 (the shipped binary): a hand-applied `B1SL` on a `SER` + `FUC` segment gives the `C1–OG` bond, the three
  angles through `OG` and the `H1 O5 OG C2` improper, with no `PATCH-ERR`, both before and after the change — i.e. the
  `:3002` body was the one in effect; the `+OG1` body never applied.
- `topoaa` on all nine glycan golden structures (`thr-glycosylation`, `ser-glycosylation`, `gal-a2g/naa/nam/ngm`, `sia`,
  `sia-a2g-23/26`): `_haddock.psf` and `_haddock.pdb` are byte-identical before and after; the CNS logs differ only by
  the three removed `RTFRDR-ERR` lines (count 3 → 0 in every log).
- `pytest integration_tests/test_topoaa.py tests/test_cns_paths.py`: 60 passed, 1 skipped. The three
  `*ligand*automated*` / `ensemble_ligand_files` tests fail identically on `main` on my machine (PRODRG exits −31) and
  are unrelated.
- Not touched: the 6 `PATCH-ERR` lines in the `sia-a2g-26` run, which are #1716.

## AI assistance

Claude Fable 5.1 was used to fix the patch

## Checklist

- [ ] Tests cover the new and/or changed code (deletion only; existing topoaa tests cover the file)
- [x] Documentation updated if needed — the REMARKS link list in the file; no user-manual change needed
- [x] `CHANGELOG.md` updated for user-facing changes

## Related issues

. Related: #1718 (the ten patches never applied by `bondglycans.cns`, which include `B1SL`/`A1SL`).

## Notes for reviewers

Nothing in the generated topologies changes; the only observable difference is that the three error lines disappear
from every `topoaa` CNS log.

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `a45d0e9bf958`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.