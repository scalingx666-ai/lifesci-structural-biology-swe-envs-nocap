# Issue

**Title:** Fix hydrogen bond detection in add_hydrogen_bond_interactions

## Description

. Supersedes the approach in #370, following the review feedback there (use the existing `HYDROGEN_BOND_DONORS`/`HYDROGEN_BOND_ACCEPTORS`, include backbone atoms, allow choosing bb-bb / bb-sc / sc-sc).

### What was wrong

`add_hydrogen_bond_interactions` found few or no real hydrogen bonds:

1. It searched `rgroup_df`, which has backbone atoms removed, so `"N"`/`"O"` in its atom list could never match. Backbone H-bonds were never found.
2. It matched atom names exactly, so `"ND"`, `"NE"`, `"NH"`, `"OE"` never matched real atoms (`ND1`, `ND2`, `NE2`, `NH1`, `OE1`, ...). `OG1` (Thr) was also missing.
3. It added an edge for *any* two listed atoms within 3.5 Å, with no donor/acceptor pairing. On atom graphs this links atoms within the same residue, e.g. `ASP:OD1–ASP:OD2` of one carboxylate.
4. The sulphur pass labelled any `SG`/`SD` pair within 4 Å as an `hbond`, which includes disulfide bonds (~2.05 Å).

With the peptide from #437, master gives **0** hbond edges for a CA graph. For an atom graph it gives one edge, `A:ASP:2:OD1–A:ASP:2:OD2`.

(The `atom_type == "CA"` in the issue title is expected. With `granularity="CA"` every node is a CA node. The real problem was the missing edges.)

### The fix

An edge is now added when a **donor** atom in one node is within `distance_threshold` (3.5 Å, unchanged) of an **acceptor** atom in another:

- Side-chain donors/acceptors come from the existing `HYDROGEN_BOND_DONORS`/`HYDROGEN_BOND_ACCEPTORS` tables, keyed by residue, so e.g. `GLN:NE2` is a donor but `GLN:OE1` is not.
- Backbone `N` is a donor, except in proline and its variants (any residue mapping to `P` in `RESI_THREE_TO_1`, e.g. `HYP`, `DPR`). Backbone `O`/`OXT` are acceptors. This only applies to amino acids (`RESI_THREE_TO_1`), so ligand atoms named `N`/`O` aren't picked up.
- Pairs in the same residue are skipped. Backbone–backbone pairs between residues joined by a peptide bond are skipped too, since N(i) and O(i−1) are always ~2.3 Å apart across it. Peptide bonds are found from the C/N coordinates (C–N ≤ 2.0 Å), not residue numbers, so insertion codes (`10, 10A, 10B…`) and numbering gaps are handled.
- New `hbond_types` argument (`"bb-bb"`, `"bb-sc"`, `"sc-sc"`, default all) as suggested in #370.
- Sulphur is no longer treated as a donor/acceptor. This is consistent with the existing tables and the discussion in #370. Disulfides are still available via `add_disulfide_interactions`.

The signature stays backward compatible: `G, rgroup_df=None` as before, and the new arguments have defaults. It reuses `compute_distmat`/`add_interacting_resis`.

On the #437 peptide it now finds `PRO1:O–LEU4:N` and `GLN6:OE1–GLY7:N` (the two Mol* shows), plus `PRO1:O–ALA3:N` (3.14 Å) and `THR9:OG1–GLY10:N` (3.24 Å). The same residue pairs come out at CA and atom granularity. Mol* also checks H-bond angles. This function is distance-only (no hydrogen positions), so it can return a superset; that's noted in the docstring.

### Behaviour changes worth flagging

- More hbond edges than before on typical structures, since backbone and previously-missed side-chain atoms now count.
- No more S–S "hbond" edges.
- With `keep_hets`, ligand atoms are no longer considered (they previously were, if their names matched the list).

### Tests

Replaced the skipped `test_add_hydrogen_bond_interactions` ("Implementation needs to be checked") with tests on 4HHB. They check against atom coordinates and the donor/acceptor tables, not the function's own logic:

- Atom graph: every hbond edge is a donor–acceptor pair, in different residues, ≤ 3.5 Å, with no adjacent backbone–backbone pairs. Backbone–backbone hbonds are found.
- CA graph edges equal the atom graph edges mapped to residues.
- `hbond_types` filtering for each type, plus a `ValueError` for unknown types.
- Insertion codes: residues `i..i+4` of a helical O(i)–N(i+4) H-bond are renumbered `i, iA, iB, iC, iD`, and the H-bond must still be found.
- Proline variants: a donating residue renamed to `HYP`/`DPR` must no longer donate from its backbone N.

All the new tests fail on master and pass with this change. `tests/protein/edges`, `tests/protein/test_graphs.py` and `test_dssp.py` pass locally.

🤖 Generated with [Claude Code](https://claude.com/claude-code)

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `3fb8d7efa916`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.