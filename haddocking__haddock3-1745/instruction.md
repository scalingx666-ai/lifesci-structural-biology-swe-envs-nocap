# Issue

**Title:** Turn on autotoppar by default and handle unknown residues safely - issue #1743

## Description

> Before submitting, read the [contributing guidelines](CONTRIBUTING.md) and the [AI policy](AI-POLICY.md).

## What does this PR do and why?
This PR sets `autotoppar = true` by default in `[topoaa]`, so that PRODRG generates the topology and parameters of unknown residues automatically. Every unknown residue then goes through PRODRG. The PR therefore also makes sure that residues PRODRG cannot handle correctly lead to a clear error instead of a silently wrong system.

- **Default:** `autotoppar = true`. The topoaa docstring is updated accordingly.
- **Clearer PRODRG errors:** the error names the failing residue and gives PRODRG's own reason. PRODRG exits with 0 on failure and prints its errors on stdout, so they were never shown before. For ion-like residues, it lists the supported residue and atom names (e.g. `ZN: if this is an ion, use residue ZN2 with atom ZN+2`), with a link to the manual.
- **Ions:** the neutral single-atom ion residues are removed from `ion.top`, except `AR`, `AS`, `KR` and `XE`, which have no charged species. A PDB-style `ZN` was silently treated as a neutral zinc atom; it is now reported as unknown, with the hint above.
- **PDB name aliases:** `TPO`→`TOP`, `HEM`→`HEB`, `SLB`→`SIB`, `CMO`→`COM` and `ARS`→`AS` are renamed on input (`libpdb.rename_residues`), before the check for unknown residues. Their heavy-atom names match the HADDOCK3 definitions.
- **Selenocysteine:** a PDB selenocysteine (`SEC` with an `SE` atom) was silently built as the HADDOCK3 `SEC` residue, a serine variant for covalent docking, with `SE` dropped and `OG` built. It is now converted on input to cysteine (`SE` renamed to `SG`, coordinates kept), with a warning. The HADDOCK3 `SEC` residue itself is unchanged.
- **Residues PRODRG would parameterise without their bonds:** topoaa now stops with an error for
  - unknown residues inside a polymer chain (C–N or O3'–P bond to a neighbour);
  - unknown sugars linked by a glycosidic bond (to a protein or another sugar).

  Residues of fewer than three atoms (e.g. ions) are not passed to PRODRG.
- **`autotoppar = false`:** unknown residues are still removed, but a warning now lists them and says when their removal breaks a chain or a glycosidic bond.

## How was this tested?
- **New unit tests** (`tests/test_libligand.py`, `tests/test_libpdb.py`) cover:
  - a real PRODRG failure;
  - the extraction of PRODRG's error lines;
  - the ion hint;
  - the residue aliases and the selenocysteine conversion;
  - the in-chain and linked-sugar detection, including free ligands and sugars that must still go to PRODRG.
- **Updated tests:** the preprocessing ion tests now expect neutral `ZN`, `NI` and `F` to stay unrecognised. `tests/test_gear_preprocessing.py` is also ruff-formatted.
- **Test suites:** `pytest tests/` (2371 passed), `integration_tests/` (129 passed) and `end-to-end_tests/test_protein_ligand.py` all pass.
- **Manual topoaa runs:**
  - an ion with an undefined charge;
  - a neutral `ZN`, with `autotoppar` true and false;
  - a `TPO` in a protein, which is built as `TOP` with its phosphate;
  - a PDB selenocysteine, which is built as a cysteine instead of a serine;
  - an unknown residue inside a protein chain;
  - an unknown O-linked sugar.
- **Zinc-finger example:** CAPRI results identical to main.
- **No false positives:** none of the tracked PDB files in the examples and tests is wrongly flagged by the in-chain or sugar checks.

## AI assistance
Claude Code wrote the code, tests and docstrings based on my specifications and checked them as described above.
The force-field change (removal of the neutral ions from `ion.top`) and the residue aliases were decided by me after reviewing the analysis
(affected files, atom-name comparison against the PDB Chemical Component Dictionary).

## Checklist

- [X] Tests cover the new and/or changed code
- [X] Documentation updated if needed (also in the [haddock3 user-manual](https://github.com/haddocking/haddock3-user-manual)) (user-manual update to follow: default, ion naming, aliases)
- [X] `CHANGELOG.md` updated for user-facing changes

## Related issues

## Notes for reviewers
- **Behaviour change:** runs with unknown residues that previously went through, with the residues silently removed or treated as neutral ions, now either generate their topology or stop with an explicit error. `autotoppar = false` restores the old behaviour, now with a warning.
- **Glycan trimming:** opt-in trimming of unknown glycan branches is proposed in #1744.

🤖 Generated with [Claude Code](https://claude.com/claude-code)

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `7212fbb70d1e`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.