# Issue

**Title:** Don't overwrite the ligand map in place; validate chem_comp_types

## Description

#### Reference Issues/PRs

Extracts the remaining changes from #445. Everything else in #445 (RCSB Data API ligand map, `rcsb-api` dependency, `tqdm.auto`, `StringIO` for `pd.read_json`, Python version bumps, shape-moment test tolerance, `PYG_DATASETS_AVAIL`) is already on `master`, mostly via #451, or has been superseded (`setup.py` / `.requirements` / CI changes, replaced by uv).

#### What does this implement/fix? Explain your changes

- **The CC → PDB ligand map is no longer overwritten in place.** `PDBManager._generate_ligand_map` passed `cc-to-pdb.tdd` as both `pdb_to_cc_output_file` and `cc_to_pdb_output_file`, so the PDB → CC map was written there first and then overwritten. The final file was correct, but if the process stopped between the two writes, the file held the PDB → CC map. It is only generated when missing, so it was never regenerated and was parsed the wrong way round. `process_chem_comp_results_and_write_to_file` and `generate_pdb_ligand_mappings` now accept `pdb_to_cc_output_file=None` to skip that file, and `PDBManager` passes `None`. #445 wrote it to a temporary directory instead. `None` avoids writing a file that isn't needed.
- **Invalid `chem_comp_types` are rejected up front.** `generate_pdb_ligand_mappings` now raises `ValueError: Invalid chem_comp_types: [...]. Allowed values are: (...)`. Before, it raised a bare `KeyError` from the mapping lookup. Both happen before any API request. This change is from #445.

Not carried over from #445:

- **`tests/ml/test_pdb_data.py`:** 131 lines that stub out numpy, pandas, biopandas and graphein in order to import `pdb_data`. A seven-line test that imports the real module (skipped if it can't be imported) checks the same thing.
- **The `_frames_are_sequential` loop:** master's `all(a < b for a, b in zip(...))` is correct. The loop in #445 only returned the result for the last frame.

#### What testing did you do to verify the changes in this PR?

- Added three tests to `tests/ml/test_dataset_utils.py`:
  - invalid `chem_comp_types` raise a `ValueError` before the API client is configured;
  - `pdb_to_cc_output_file=None` writes only the CC → PDB file;
  - `PDBManager._generate_ligand_map` passes `None`.
- All three fail on `master`.
- `pytest tests/ml` with torch and PyG installed: 21 passed, 4 skipped (DGL isn't installed). Python 3.12 on macOS.
- `ruff check` and `ruff format` pass on the changed files.

#### Pull Request Checklist

- [x] Added a note about the modification or contribution to the `./CHANGELOG.md` file (if applicable)
- [x] Added appropriate unit test functions in the `./graphein/tests/*` directories (if applicable)
- [ ] Modify documentation in the corresponding Jupyter Notebook under `./notebooks/` (if applicable)
- [x] Ran the relevant tests (`tests/ml`)
- [x] Checked for style issues (`ruff check`, `ruff format`)

🤖 Generated with [Claude Code](https://claude.com/claude-code)

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `94da785854c4`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.