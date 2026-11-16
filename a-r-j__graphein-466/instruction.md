# Issue

**Title:** Add `add_bond_type_one_hot` edge feature for molecular graphs

## Description

Molecular graphs had no one-hot bond-type edge feature, only the raw `BondType` enum from `add_bond_type`. This adds one in the same style as the existing node one-hot features.

**`graphein/molecule/features/edges/bonds.py`**
- New `add_bond_type_one_hot(u, v, d, return_array=True, allowable_set=None)`.
  - The default set is `SINGLE`, `DOUBLE`, `TRIPLE`, `AROMATIC`. Pass `allowable_set` to override it.
  - The result is stored in `d["bond_type_one_hot"]`.
  - `return_array=True` returns an `np.ndarray`. `False` returns a `pd.Series` indexed by the bond types.
- The module now imports `rdkit.Chem.rdchem` in a try/except, so it still imports without rdkit installed.

**`CHANGELOG.md`**
- Added an "Unreleased" entry.

**Behaviour to review**
- `onek_encoding_unk` has no catch-all slot, so a bond type outside the allowed set encodes as all zeros.
- An edge with no `"bond"` entry sets the feature to `None`, as the other bond features in this file do.

```python
from graphein.molecule.config import MoleculeGraphConfig
from graphein.molecule.features.edges.bonds import add_bond_type_one_hot
from graphein.molecule.graphs import construct_graph

g = construct_graph(config=MoleculeGraphConfig(), smiles="c1ccccc1C=O")
u, v, d = next(iter(g.edges(data=True)))
add_bond_type_one_hot(u, v, d)  # array([0, 0, 0, 1]) for an aromatic bond
```

No tests are included; I only checked it manually with the snippet above.

<!-- START COPILOT CODING AGENT SUFFIX -->

-

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `157019393cb1`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.