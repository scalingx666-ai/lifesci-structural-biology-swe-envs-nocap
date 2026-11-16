# Issue

**Title:** Handle degenerate ligand planarity geometry

## Description

.

## Summary

`are_atoms_planar()` currently assumes that every vector it normalizes has nonzero length. Duplicate or collinear coordinates can therefore raise `ZeroDivisionError` instead of producing a planarity result.

This patch conservatively treats geometry that cannot define a unique plane as non-planar:

- return `False` when the first two displacement vectors have a zero-length cross product;
- return `False` when a later atom has zero displacement from the anchor atom.

Valid, non-degenerate geometry follows the existing calculation unchanged.

## Tests

Two focused regression tests cover both normalization sites. Local validation:

```text
pytest tests/test_ligand.py -q
2 passed

pytest -q
63 passed

mypy
Success: no issues found in 37 source files

flake8 . --count --select=E9,F63,F7,F82 --show-source --statistics
0
```

On the real RCSB 8EL4 PDB and mmCIF inputs, both formats reach the new guard with the same degenerate coordinates and return `False`:

```text
[(-26.518, -7.369, 46.419),
 (-25.607, -7.208, 47.534),
 (-26.518, -7.369, 46.419)]
```

Before this patch, both inputs fail at that point with `ZeroDivisionError`.

## Scope

After this exception is handled, 8EL4 exposes a separate performance problem later in bonding/ligand preparation, related to its overlapping whole-chain alternate conformations. This PR deliberately does not change conformation top-up or bonding behavior; it only makes the planarity helper safe for degenerate inputs.

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `3ac48fd17f24`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.