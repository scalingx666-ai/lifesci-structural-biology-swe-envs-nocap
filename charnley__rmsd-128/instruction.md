# Issue

**Title:** fix reorder_inertia_hungarian uses wrong coordinates to determine COM

## Description

Hello,

I discovered a bug in the `reorder_inertia_hungarian` function that causes an incorrect center of mass calculation for the second molecule (`q_coord`).

Currently, the function attempts to center `q_coord` using the coordinates of the first molecule (`p_coord`). This leads to improper alignment before the inertia tensors are calculated, which can result in a suboptimal atom reordering and an artificially high RMSD value.

The issue is located in `rmsd/calculate_rmsd.py`:

**The Buggy Line:**
```python
# ...
q_coord -= get_cm(q_atoms, p_coord)  # Incorrectly uses p_coord
# ...
```

**The Fix:**
The calculation should use the coordinates of the second molecule (`q_coord`) for its own centering operation:
```python
# ...
q_coord -= get_cm(q_atoms, q_coord)  # Correctly uses q_coord
# ...
```

This change ensures that both molecules are correctly centered at their respective centers of mass before the reordering algorithm proceeds.

I have not checked the entire codebase so there still might be some bugs of this kind.

Kind regards,
Ilias

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `ad3fe3cdd26d`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.