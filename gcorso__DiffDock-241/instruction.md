# Issue

**Title:** Fixing bug leading to atom graph containing a lot of incorrect atoms

## Description

Hey!

First of all thanks for a great repo! It's a very cool piece of research.

I have playing around with this a repo a bit lately and found this bug a few days ago. The consequence of assigning these to zero instead of nan is that the filtering on this line https://github.com/gcorso/DiffDock/blob/main/datasets/process_mols.py#L205 will not work as it's intended. This leads to loads of atoms (thousands) in the location `[0, 0, 0]` in the graph and means that all of `complex_graph['atom']`, `complex_graph['atom', 'atom_contact', 'atom']` and `complex_graph['atom', 'atom_rec_contact', 'receptor']` get corrupted.

You can see this for yourself by running the following script. You'll see that for any protein you have loads of atoms in `[0, 0, 0]`.

```
import numpy as np
from torch_geometric.data import HeteroData

from datasets.process_mols import moad_extract_receptor_structure

pdb_fp = 'PATH/TO/DATA/PDBBind_processed/4ql1/4ql1_protein_processed.pdb'

het_data_new = HeteroData()

moad_extract_receptor_structure(
    path=pdb_fp,
    complex_graph=het_data_new,
    neighbor_cutoff=15.0,
    max_neighbors=24,
    sequences_to_embeddings=None,
    knn_only_graph=True,
    lm_embeddings=None,
    all_atoms=True,
    atom_cutoff=5.,
    atom_max_neighbors=8,
)

arr = het_data_new["atom"].pos.numpy()

# Find unique rows and their counts
unique_rows, counts = np.unique(arr, axis=0, return_counts=True)

# Print the unique rows and their counts (essentially value_counts on numpy array)
val_cnts = list(zip(unique_rows, counts))
print(len(arr))
print(sorted(val_cnts, key=lambda x: -x[1])[:5])
```

Full disclaimer I'm only using a subset of your repo, so I'd advise to test it out on your full repo before merging, in case there's someplace that expects there to be `[0, 0, 0]` (from a quick inspection it seems like it's not).

The main difference by fixing this was that your atom model trains with half the GPU memory requirement, I have tbh not seen a massive performance difference (but maybe the atom model needs tweaking to leverage the corrected atom graph).

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `6d065cd78c11`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.