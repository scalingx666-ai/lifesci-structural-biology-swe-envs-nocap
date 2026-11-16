# Issue

**Title:** Correct the coordinates computation for small residue graohs, and when granularity: centroids

## Description

#### Reference Issues/PRs


#### What does this implement/fix? Explain your changes
- Add conditions to `graphein/protein/edges/distance.py` not to compute distances and angles on empty dataframes
- Ensure the good calculation of centroids coordinates by correcting the selection (`atoms.groupby("residue_number") `-> `atoms.groupby(["residue_number","chain_id","residue_name"])`)
- 
#### What testing did you do to verify the changes in this PR?
```
from graphein.protein.graphs import construct_graph
from graphein.protein.config import ProteinGraphConfig
from graphein.protein.edges.distance import (add_peptide_bonds,
                                             add_hydrogen_bond_interactions,
                                             add_disulfide_interactions,
                                             add_ionic_interactions,
                                             add_aromatic_interactions,
                                             add_aromatic_sulphur_interactions,
                                             add_cation_pi_interactions,
                                             add_distance_threshold
                                            )


new_edge_funcs = {"edge_construction_functions": [add_peptide_bonds,
                                                  add_aromatic_interactions,
                                                  add_hydrogen_bond_interactions,
                                                  add_disulfide_interactions,
                                                  add_ionic_interactions,
                                                  add_aromatic_sulphur_interactions,
                                                  add_cation_pi_interactions,
                                                  partial(add_distance_threshold, long_interaction_threshold=2, threshold=20.)]}

params_to_change = {"granularity": "centroids"}
config = ProteinGraphConfig(**new_edge_funcs, **params_to_change)

pdb_name = 'xxxx.pdb'
g = construct_graph(config=config, pdb_path=pdb_name)
g.coords
```

#### Pull Request Checklist
- [x] Added a note about the modification or contribution to the `./CHANGELOG.md` file (if applicable)
- [x] Added appropriate unit test functions in the `./graphein/tests/*` directories (if applicable)
- [x] Modify documentation in the corresponding Jupyter Notebook under `./notebooks/` (if applicable)
- [x] Ran `python -m py.test tests/` and make sure that all unit tests pass (for small modifications, it might be sufficient to only run the specific test file, e.g., `python -m py.test tests/protein/test_graphs.py`)
- [x] Checked for style issues by running `black .` and `isort .`

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `28ae687af50c`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.