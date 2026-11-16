# Issue

**Title:** Fix peptide bonds overwriting edge kinds and weighted chain graphs mutating the input

## Description

#### Reference Issues/PRs

None.

#### What does this implement/fix? Explain your changes

**1. Peptide bonds overwrite the kinds of existing edges**

`add_sequence_distance_edges` (used by `add_peptide_bonds`) and `graphein.protein.edges.intramolecular.peptide_bonds` checked `G.has_edge(i, i + d)` using the loop positions `i` rather than node IDs like `A:ALA:12`. That check is never true, so they always called `G.add_edge(u, v, kind={name})`, which replaces the `kind` set of an existing edge.

As a result, the order of `edge_construction_functions` changed the graph. On 1lds with kNN (`k=3`) edges added before peptide bonds, 96 of 166 kNN labels were lost. With peptide bonds first, those 96 edges kept both labels.

`add_sequence_distance_edges` now uses the existing `add_edge` helper in `distance.py`; `peptide_bonds` checks the real node IDs.

**2. `compute_chain_graph(..., return_weighted_graph=True)` modifies the input graph**

`compute_chain_graph` and `compute_secondary_structure_graph` built their multigraph with `kind=d["kind"]`, sharing the source graph's set objects. `compute_weighted_graph_from_multigraph` then stored the first parallel edge's set and `.update()`d it with the others.

On 4hhb with kNN and ionic edges, 7 residue edges in the input graph gained an `ionic` label they don't have, e.g. `A:VAL:1–C:SER:138` went from `{knn}` to `{ionic, knn}`. All three places now copy the set, so the unweighted chain and secondary-structure graphs no longer share sets with the input graph either.

**Behaviour change:** graphs built with peptide bonds after other edge functions keep those edges' kinds. Previously those kinds were replaced by `peptide_bond`.

#### What testing did you do to verify the changes in this PR?

- New `test_peptide_bonds_keep_existing_edge_kinds` (for both `add_peptide_bonds` and `peptide_bonds`): builds 4hhb with kNN then peptide bonds and with the reverse order, and requires identical edge kinds, with at least one edge having both.
- New `test_weighted_chain_graph_does_not_modify_input`: requires that the input graph's edge kinds are unchanged after `compute_chain_graph(..., return_weighted_graph=True)`.
- All three new test cases fail on `master` and pass on this branch.
- `pytest tests/protein/edges tests/protein/test_graphs.py tests/protein/test_subgraphs.py`: 37 passed, 11 skipped (DSSP not installed, large download).
- `test_construct_graphs_mp` was deselected because it also fails on `master` locally (its worker processes crash).
- `compute_secondary_structure_graph` needs DSSP, which isn't installed locally, so its copy was not exercised.

#### Pull Request Checklist

- [x] Added a note about the modification or contribution to the `./CHANGELOG.md` file (if applicable)
- [x] Added appropriate unit test functions in the `./graphein/tests/*` directories (if applicable)
- [ ] Modify documentation in the corresponding Jupyter Notebook under `./notebooks/` (if applicable)
- [x] Ran the relevant test files (see above)
- [x] Checked for style issues by running `black .` on the changed files

🤖 Generated with [Claude Code](https://claude.com/claude-code)

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `c6cb8a7cb222`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.