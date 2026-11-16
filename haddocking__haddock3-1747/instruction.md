# Issue

**Title:** Stop the run on input residues with an insertion code - issue #1746

## Description

> Before submitting, read the [contributing guidelines](CONTRIBUTING.md) and the [AI policy](AI-POLICY.md).

## What does this PR do and why?
Residue insertion codes (e.g. `52A`, common in antibodies) were accepted without warning. CNS builds them correctly, but several steps identify residues by their number only (`caprieval` through `libalign`, the scanning modules, `librestraints`), so that e.g. residues 52 and 52A are silently merged.

- **Check before the run starts:** `setup_run` checks the input molecules (`libpdb.find_insertion_codes`) and stops with an error listing the affected files and residues, explaining how to renumber them (e.g. `pdb_fixinsert` from pdb-tools) together with the restraint files and reference structures. No run directory is created. The original input is checked also with `preprocess = true`, which would otherwise renumber the residues silently, out of sync with the restraints and references.
- **`haddock3-score`** (no restraints, no reference) is not checked and still accepts insertion codes.
- **Example:** the input of `examples/scoring/prodigy-protein-ligand-test.cfg` (`prot-lig.pdb`) had insertion codes and is renumbered with `pdb_fixinsert`. The diff is large because all following residue numbers shift; the PRODIGY scores are unchanged.

## How was this tested?
- Unit tests for `find_insertion_codes` and `check_insertion_codes`, using the existing `broken_pdb` and `corrected_pdb` fixtures.
- A run on a protein with residue `88A` stops with the error, without creating the run directory, also with `preprocess = true`; `haddock3-score` on the same file works.
- `pytest tests/` (2373 passed), `integration_tests/` (127 passed) and `end-to-end_tests/` (5 passed).
- Before the fix: the protein-protein docking test example, with one active residue of E2A renumbered `37A` consistently in the input, reference and restraints, ran without warning, but the best model after refinement dropped from DockQ 0.834 to 0.524.

## AI assistance
Claude Code investigated the handling of insertion codes, wrote the check and the test based on my specifications, and checked them as described above. I reviewed the changes.

## Checklist

- [X] Tests cover the new and/or changed code
- [ ] Documentation updated if needed (also in the [haddock3 user-manual](https://github.com/haddocking/haddock3-user-manual)) (user-manual note to follow)
- [X] `CHANGELOG.md` updated for user-facing changes

## Related issues
Related to #1746 (the reference structures in `caprieval` remain to be handled)

## Notes for reviewers
- Only the input molecules of a run are checked. Reference structures with insertion codes are still merged by `caprieval`, e.g. `examples/docking-protein-ligand/data/target.pdb` (`345A`, `412A`–`412C`). This is listed as a follow-up in #1746.

🤖 Generated with [Claude Code](https://claude.com/claude-code)

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `62bef1fc2d9f`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.