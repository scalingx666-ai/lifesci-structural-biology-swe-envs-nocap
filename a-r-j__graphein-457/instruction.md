# Issue

**Title:** Fix kNN edges between residues that differ only by insertion code

## Description

> [!NOTE]
> **AI-generated, not reviewed by a human.** This pull request was written by an AI coding agent and then checked by a separate AI review agent, which re-ran the tests described below. No human has reviewed the code. It is submitted by @monsterlag, who runs these agents. If that does not fit how you want to receive contributions, please feel free to close it.

#### Reference Issues/PRs

#### What does this implement/fix? Explain your changes

`add_k_nn_edges` decides whether two same-chain nodes are far enough apart in sequence using `abs(residue_number_1 - residue_number_2) > long_interaction_threshold`. Residues that share a residue number but have different insertion codes (e.g. `52` and `52A`, or `100A` and `100B` in antibody CDRs) get a separation of 0, so with the default `long_interaction_threshold=0` they are never connected, even when they are each other's nearest neighbours.

This change treats two residues with the same residue number but different insertion codes as at least one position apart. With the default threshold they are now connected; with a threshold of 1 or more they are still excluded, as residues `52` and `53` are. Atoms of the same residue (same number and insertion code) still have a separation of 0, so atom-level graphs keep excluding intra-residue kNN edges as before. If the dataframe has no `insertion` column (as in the synthetic dataframes in the existing tests), behaviour is unchanged.

`add_distance_threshold` and `add_distance_window` use the same residue-number comparison. I left both alone: the issue is about kNN edges, and open PR #423 is rewriting `add_distance_threshold`. They could be fixed the same way in a follow-up.

#### What testing did you do to verify the changes in this PR?

Added `test_add_k_nn_edges_between_residues_with_insertion_codes` to `tests/protein/edges/test_distance.py`. It builds a CA graph with `add_k_nn_edges(k=5)` from the bundled `tests/protein/test_data/input_pdb_cryst1.pdb`, which has insertion codes in chains H and L. It then checks for the edges `H:TRP:52`–`H:TYR:52:A`, `H:ASP:100`–`H:TYR:100:A` and `H:TYR:100:A`–`H:VAL:100:B`.

All runs used Python 3.11 on Linux aarch64, with pandas 3.0.6 and numpy 1.26.4:

- Before the fix, `python -m pytest --no-cov tests/protein/edges/test_distance.py -k insertion` failed with `Missing kNN edge between H:TRP:52 and H:TYR:52:A`.
- After the fix, `python -m pytest --no-cov tests/protein/edges/` gave `16 passed, 3 skipped`. The 3 skips are tests already marked as skipped.
- `python -m pytest --no-cov tests/protein/test_graphs.py` gave `11 passed, 5 skipped, 1 failed`. The failure is in `test_construct_graphs_mp`: `BrokenProcessPool`, a worker process killed. That test only builds graphs with the default config, which has no kNN edges. In my memory-limited (3 GB) environment it is flaky. It passed once on unmodified `master`, and with this change it passed once and failed twice when run alone.
- `black --check` and `isort --check-only` on the two changed Python files both passed.

#### Pull Request Checklist

- [ ] Added a note about the modification or contribution to the `./CHANGELOG.md` file (if applicable)
- [ ] Added appropriate unit test functions in the `./graphein/tests/*` directories (if applicable)
- [ ] Modify documentation in the corresponding Jupyter Notebook under `./notebooks/` (if applicable)
- [ ] Ran `python -m py.test tests/` and make sure that all unit tests pass (for small modifications, it might be sufficient to only run the specific test file, e.g., `python -m py.test tests/protein/test_graphs.py`)
- [ ] Checked for style issues by running `black .` and `isort .`

---

## Changes added during review

These commits were pushed on top of 123a38e, the original commit.

- **765bc6e: merge `master`.** Master now reads node ids, chains and residue numbers into arrays once, before the loop in `add_k_nn_edges`, so insertion codes are read the same way. The test and CHANGELOG conflicts kept both sides.
- **17b1382: fix the same bug in `add_distance_threshold` and `add_distance_window`.** These compared residue numbers the same way, so 52 and 52A were 0 apart there too.
- **406eeb6: count inserted residues and fix peptide bonds.**
  - **New `graphein.protein.utils.sequence_positions(pdb_df)`.** It goes through each chain in order and steps each residue's position by the difference in residue numbers, with a minimum step of 1:
    - Insertions after their residue (antibody numbering): `52, 52A, 53` are at 52, 53 and 54. `101` is 7 after `100` when `100A`-`100F` are between them. With residue numbers alone it was 1.
    - Insertions before their residue (chymotrypsin numbering, e.g. thrombin `1B, 1A, 1`) also get distinct positions in order.
    - Gaps in numbering (missing residues) are kept.
    - Atoms of a residue share its position.
  - **Callers.** `add_k_nn_edges`, `add_distance_threshold`, `add_distance_window`, `add_sequence_distance_edges` (and so `add_peptide_bonds`) and `peptide_bonds` all measure separation with it.
  - **Peptide bonds.** `add_peptide_bonds` and `peptide_bonds` never bonded residues that differ only by insertion code (`52`-`52A`, `100A`-`100B`), and now do. `add_sequence_distance_edges(d=2)` now connects `52` and `53` when `52A` is between them.

### Behaviour changes

- **No insertion codes, increasing numbering:** unchanged. On every structure in `tests/protein/test_data`, `sequence_positions` equals `residue_number`.
- **Structures with insertion codes:**
  - Residues that differ only by insertion code are 1 apart, as in the original commit.
  - Residues separated by a run of insertions are now further apart than their residue numbers suggest (`100`-`101` is 7, not 1). So `long_interaction_threshold` filters kNN and distance edges near insertion runs differently.
- **Residue numbers that go backwards within a chain:** consecutive residues are now 1 apart, rather than the absolute difference in numbers.

### Parts of the description above that no longer apply

- *"`add_distance_threshold` and `add_distance_window` … I left both alone"*: both are now fixed (17b1382, 406eeb6).
- *"If the dataframe has no `insertion` column … behaviour is unchanged"*: it is still unchanged for increasing residue numbers. If numbers go backwards within a chain, consecutive residues are now 1 apart (see above).

### Tests

- **`test_sequence_positions` (`tests/protein/test_utils.py`):** insertions after and before their residue, gaps in numbering, two chains, several atoms per residue, and no `insertion` column.
- **`test_insertion_codes_one_residue_apart`:** for `add_k_nn_edges`, `add_distance_threshold` and `add_distance_window`, `52`-`52A` is excluded at the `long_interaction_threshold` that excludes a separation of 1 and kept at the one below it.
- **`test_peptide_bonds_across_insertion_codes`:** for `add_peptide_bonds` and `peptide_bonds`.
- **`test_sequence_distance_edges_across_insertion_codes`.**
- **Results:** on Python 3.12 / macOS, `pytest tests/protein --ignore=tests/protein/tensor` gives 81 passed, 14 skipped. Torch isn't installed, so the tensor tests weren't run. The new tests failed before the matching fixes. `ruff check` and `ruff format` pass on the changed files.

### Notes

- **#423** rewrites `add_distance_threshold`, so whichever of the two PRs merges second will need a conflict fix.
- **CHANGELOG:** the entry covers all of the above and links #410 and #457.

🤖 Generated with [Claude Code](https://claude.com/claude-code)

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `5a1b27d96143`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.