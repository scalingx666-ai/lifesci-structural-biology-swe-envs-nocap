# Issue

**Title:** Fix bug in PDB DataFrame (e.g. when using `add_distance_threshold` edges in `construct_graph`)

## Description

### Testing 

```python
uniprot_id = "P04629"

from functools import partial
from graphein.protein import construct_graph
from graphein.protein.config import ProteinGraphConfig
from graphein.protein.edges.distance import add_distance_threshold

threshold_distance = 6.0

new_edge_funcs = {"edge_construction_functions": [partial(add_distance_threshold, long_interaction_threshold=-1, threshold=threshold_distance)]}
config = ProteinGraphConfig(**new_edge_funcs)
g_dist_all = construct_graph(
    path = f"{uniprot_id}.pdb",
    config=config,
)

for edge in g_dist_all.edges(data=True):
    d = edge[-1]["distance"]
    assert d < threshold_distance

```

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `46b935b0d1ed`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.