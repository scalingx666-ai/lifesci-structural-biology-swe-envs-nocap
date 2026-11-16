# Issue

**Title:** fix(steering): connections get ligand-ligand bonds and metal-coordination bounds

## Description

## What

Two fixes to the connections potential used by `--steering`. First, it now also receives **ligand–ligand** bonds: glycosidic links, and bonds between ligand residues or ligand chains. Before, it received protein–ligand bonds only.

## Why

`_build_connections` (`intellifold/steering/rdkit_features.py`) looked for `token_atoms_to_ligand_ligand_bonds:*` in the feature dict. AF3's featurisation doesn't produce that table: it gathers protein–ligand bonds at atom level (`token_atoms_to_polymer_ligand_bonds`), but ligand–ligand bonds only at token level (`tokens_to_ligand_ligand_bonds`). The missing key was skipped silently, so every ligand–ligand bond was dropped:

- the connections potential never held a glycosidic bond or a bond between ligand residues;
- when such a bond joins two ligand **chains**, the VDW-overlap potential didn't exempt that chain pair, so it pushed the bonded atoms apart.

The fix reads the token-level table as well. A ligand atom is a token of its own, held in slot 0, so its flat atom index is `token * A`. Both endpoints must be present in `pred_dense_atom_mask`.

## Evidence

`build_steering_features` on featurised inputs: a 33-residue protein, N-glycosylated at Asn1 (Asn1 ND2–NAG C1), with a β-1,4 NAG–NAG link. Atom names are decoded from `ref_atom_name_chars` at the connected flat indices.

| input | `connections_index`, main | `connections_index`, this PR | VDW pairs between the two NAG chains |
|---|---|---|---|
| NAG–NAG in one ligand chain | `A1 ND2 – B1 C1` | `A1 ND2 – B1 C1`, **`B1 O4 – B2 C1`** | n/a (same chain) |
| NAGs in two ligand chains | `A1 ND2 – B1 C1` | `A1 ND2 – B1 C1`, **`B1 O4 – C1 C1`** | 196 → **0** |

Protein–ligand bonds and the other VDW pairs (protein–NAG(C): 3878) are unchanged.

## Metal coordination: a window around the typical distance

Declared bonds also cover metal coordination (Zn–S Cys, Zn–N His, Mg/Ca/Na–O, …). The connections potential held every connection within `_CONNECTIONS_BUFFER` = 2.0 Å, a covalent-bond bound. Coordination distances are longer and depend on the element: ~2.0 Å for Zn/Cu–N up to ~2.8 Å for K/Ba–O in high-resolution protein structures ([Harding, Acta Cryst D 2006](https://journals.iucr.org/d/issues/2006/06/00/be5055/index.html); [Bazayeva et al., Acta Cryst D 2024](https://pmc.ncbi.nlm.nih.gov/articles/PMC11066882/)). So a 2.0 Å bound pulls an ion that is already in place below its real distance: Zn–S(Cys) is 2.32 ± 0.06 Å.

A connection with a metal is now held in a window [d0 − tol, d0 + tol] around its typical distance d0, by metal and donor. The potential is flat inside the window, so an ion already in place is left alone. An ion pulled in from outside stops at the window's edge, which is why the tolerances are tight: ~2–3σ of the observed spread.

| metal | d0 to N / O | d0 to S / Se | tol |
|---|---|---|---|
| Zn, Fe, Co, Ni, Cu, Mn | 2.02–2.19 Å | 2.25–2.40 Å | 0.15 Å |
| Mg | 2.09 Å | 2.55 Å | 0.20 Å |
| Ca, Na, Li | 2.00–2.40 Å | 2.50–2.85 Å | 0.25 Å |
| K, Rb, Cs, Sr, Ba | 2.60–3.10 Å | 3.05–3.55 Å | 0.30 Å |
| Cd, Hg | 2.30 Å | 2.40–2.54 Å | 0.20 Å |
| other metals (lanthanides, Mo, W, …) | 2.40 Å | 2.60 Å | 0.35 Å |

Connections without a metal keep (−∞, `_CONNECTIONS_BUFFER`), as before. Checked with `build_steering_features`: in a Zn(Cys)₄ site (fbv2 9GJQ), the four Zn–S connections get (2.18, 2.48) Å, and the glycan's Asn–NAG and NAG–NAG connections keep (−∞, 2.0) Å.

🤖 Generated with [Claude Code](https://claude.com/claude-code)

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `4e420db7482b`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.