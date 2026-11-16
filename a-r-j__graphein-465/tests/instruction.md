# Issue

**Title:** Add `num_heavy_atoms` molecule node feature

## Description

Molecule graphs have no node feature for the number of heavy (non-hydrogen) atoms bonded to an atom. This PR adds one.

- **New feature function** in `graphein/molecule/features/nodes/atom_type.py`
  - `num_heavy_atoms(n, d)` counts the RDKit neighbours of `d["rdmol_atom"]` whose symbol isn't `"H"`.
  - It stores the count in `d["num_heavy_atoms"]` and returns it, like the other functions in the module.
  - It sits next to `total_degree`.

- **Naming**: the feature counts heavy-atom *neighbours* of the atom, not the heavy atoms in the whole molecule. The name follows the one suggested in the issue.

- **Testing**: I could not run it here because `rdkit` isn't installed in my environment. I also didn't add a test. Please verify it on an `rdkit` install, ideally on a molecule with explicit hydrogens, for example:

```python
from rdkit import Chem
from graphein.molecule.features.nodes.atom_type import num_heavy_atoms

m = Chem.AddHs(Chem.MolFromSmiles("CO"))
[num_heavy_atoms("a", {"rdmol_atom": a}) for a in m.GetAtoms()]
```

<!-- START COPILOT CODING AGENT SUFFIX -->

-

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `daa34db931bc`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.