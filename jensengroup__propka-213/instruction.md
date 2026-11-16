# Issue

**Title:** Preserve insertion codes in residue identity

## Description

This is the first focused part split from #212 following maintainer feedback.

## What changed

- Add explicit `Atom.residue_key` and `Atom.atom_key` identities that include chain ID, residue number, insertion code, and atom name where appropriate.
- Use those identities when topping up conformations, matching groups, grouping residues for protonation, and excluding same-residue atoms from desolvation.
- Replace single-character `ord(chain_id)` sorting with tuple sorting that supports multi-character chain IDs and insertion codes.
- Preserve insertion codes on generated hydrogens and display them with an unambiguous `:` separator.
- Update the 3SGB regression values affected by treating inserted residues separately.

This PR does not add mmCIF parsing or any new dependency. The gemmi-based parser is kept in a separate stacked PR.

## Why

The PDB reader already stores column 27 in `Atom.icode`, but most downstream identity checks used only labels or `(chain_id, res_num)`. Residues that differ only by insertion code could therefore be merged or treated as the same residue.

## Validation

- `python -m pytest tests`: 54 passed
- fatal flake8 rules: 0 findings
- `mypy`: no issues
- Focused tests cover multi-character chain sorting, conformation top-up, unambiguous labels, and insertion-code propagation through both protonation paths.

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `e278ae8978d4`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.