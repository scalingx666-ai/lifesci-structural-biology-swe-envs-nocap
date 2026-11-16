# Issue

**Title:** Preserve non-standard residue identity across Boltz/Protenix pipelines

## Description

## Summary

The Boltz / Protenix prediction pipelines silently lost non-standard
residue identity (MSE, BRU, CXM, MHO, NLE, HIC, …) and produced mmCIF
output that violated the PDBx/mmCIF spec on `pdbx_seq_one_letter_code`
and `pdbx_seq_one_letter_code_can`.  This PR fixes that end-to-end
across **parser → writer → inpainting template → Protenix postprocess**.

Verified on 1k1f (MSE×3), 1f4g (CXM, MHO), 1a35 (BRU); RCSB-equivalent
metadata is now present in both Boltz and Protenix outputs.

## Changes

### `chore`: ignore ninja CUDA build artifacts and per-env scratch dirs
- `.gitignore`: exclude `src/protenix/model/layer_norm/{.ninja_deps, .ninja_log, build.ninja, *.o}` (rebuilt per-env, churn with absolute paths) plus local working dirs.

### `fix(boltz)`: preserve non-standard residue identity through parser+writer
- `src/boltz/data/parse/{mmcif, mmcif_with_constraints, schema}.py`: drop the hardcoded `MSE → MET` rewrites (3 sites) so MSE flows through the standard non-standard-residue path and keeps its CCD identity.
- `src/boltz/data/write/mmcif.py`: build a 3-letter-keyed alphabet from `ihm.LPeptideAlphabet` (originally keyed by 1-letter codes) and fill `code_canonical` for non-standard ChemComps from a parent map (MSE→M, CXM→M, MHO→M, BRU→U, …).  Without this, every residue fell to the lambda fallback that produced `(ALA)` and `"X"`.
- `src/boltz/data/write/merge_cif_blocks.py`: add `_parse_mod_residue` to copy `_pdbx_struct_mod_residue` rows from the template CIF into the prediction CIF (filtered by surviving chains), so modified-residue catalogs are preserved end-to-end.

### `fix(inpainting)`: support nucleic-acid parents and emit DNA/RNA sequence strings
- `scripts/inpainting/constants.py`: add `STANDARD_NUCLEOTIDE_ONE_LETTER`, `STANDARD_RES_ONE_LETTER`, `STANDARD_RES_THREE_LETTER`.  Add common modifications to `NONSTANDARD_TO_STANDARD` — protein: NLE→LEU, HIC→HIS — DNA: BRU→DU, IDU→DU, CBR→DC, 5HU→DU, TFT→DT, 5MC/5CM→DC, 6MA→DA, 8OG→DG, CFL→DC — RNA: 4AC→C, G7M→G, 2MG→G, UR3→U, 4OC→C — so canonical resolution does not need ccd.pkl (which is built without `mon_nstd_parent_comp_id`).
- `scripts/inpainting/ccd_utils.py`: `get_non_standard_parent_from_ccd` accepts nucleic-acid parents.
- `scripts/inpainting/processor/{base, modifications}.py`: parent resolution chain (CIF → ccd.pkl → hardcoded fallback) uses `STANDARD_RES_*`.  Replace unconditional `'X'` write at modification positions with `mod['parent_one']` so the YAML sequence carries the parent letter when known.
- `scripts/inpainting/cif_writer.py`: drop the `if entity_type == 'protein'` guard around bracketed-form and canonical-form sequence emission so DNA/RNA chains receive identical treatment.

### `feat(protenix)`: enrich prediction CIF with template metadata
- `protenix_runner/cif_postprocess.py` (new): `enrich_with_template_metadata()` calls Boltz's `merge_template_blocks_into_cif` to inject `_struct_conn / _chem_comp / _cell / _symmetry / _atom_sites / _pdbx_struct_mod_residue`, then replaces the minimal `_entity_poly` loop with the template's full block (so `pdbx_seq_one_letter_code` and `_can` appear).
- `protenix_runner/inference.py`: in the per-sample post-dump hook, look up `template_cif` from the YAML/JSON sample entry and call `enrich_with_template_metadata` on every `<sample>_model_*.cif`.

> Protenix's data parsers still rewrite MSE→MET on the atom array itself (`parser.py:mse_to_met`, `json_to_feature.py:mse_to_met`) — that mirrors AlphaFold-3 SI 2.1 and is intentional for the model.  The MSE identity is now preserved in `_pdbx_struct_mod_residue` and `_entity_poly.pdbx_seq_one_letter_code`, so downstream readers can recover it without touching the model's input pipeline.

## Verification

| PDB | non-std | Before | After |
|---|---|---|---|
| **1k1f** | MSE × 3 (4 chains) | atom_site MSE→MET, no mod_residue, canonical = `XXX…X` | mod_residue 12 rows (parent=MET), `(MSE)VDP…` in seq, `MVDP…` canonical |
| **1f4g** | CXM, MHO | atoms dropped at terminal CXM, MHO→MET silently | CXM/MHO atoms preserved, mod_residue 4 rows (parent=MET), `(CXM)KQYL…M(MHO)AQQ…` |
| **1a35** | BRU × 8 (DNA) | YAML sequence `AAAAA…XX…TTT`, mod_residue parent=`?` | YAML `AAAAA…UU…TTT`, `(BRU)(BRU)` in CIF seq, `_can = …UU…`, mod_residue parent=`DU` |

Sweeps over the 1755-PDB CSV `data/patchr_explosion_audit.csv`:
- **Boltz output (1497 cif files validated)**: 0 paren-wrap bug, 0 canonical-XXXX bug, 0 missing atoms, 412/412 polymer-mod PDBs have correct mod_residue row counts.
- **Protenix output (in-flight on ada/ada-003)**: 50/50 sample valid, 0 missing mod_residue, 0 missing `pdbx_seq_one_letter_code/_can`.
- **168K full template regen**: 168,391/168,392 succeeded (1 patchr-template internal bug, unrelated).

## Test plan

- [ ] CI on Boltz inference path
- [ ] CI on Protenix inference path
- [ ] Sample test on 1a35/1k1f/1f4g end-to-end
- [ ] Sweep on a 100-PDB subset of `data/patchr_explosion_audit.csv`

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `b1082ff5d31b`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.