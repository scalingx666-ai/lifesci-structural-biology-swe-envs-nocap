# Issue

**Title:** Fix bond canonicalization bug in BondTyperLegacy for terminal triple bonds

## Description

## Solution
Applied proper bond canonicalization in the `single_triple_single` processing loop:

```python
canonicalize_bond = lambda i, j: (i, j) if i < j else (j, i)
for i, j, k, m in single_triple_single:
    triple_bonds.remove(canonicalize_bond(j, k))  # Fixed: Bond canonicalized
    single_to_rigidify.append(canonicalize_bond(i, j))
    single_to_rigidify.append(canonicalize_bond(k, m))
```

The issue was that `triple_bonds` stores bonds in canonical form `(i, j)` where `i < j`, but the code was trying to remove `(j, k)` which might be in reverse order.

## Testing
✅ Verified the fix with the reproduction case from #364 - ligand preparation now completes successfully.

## Note
This fix resolves the specific case identified in #364, but I'm not entirely sure if this canonicalization approach will handle all edge cases with triple bonds. I'm open to feedback and suggestions for a more robust solution if needed.

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `af7568fd12bd`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.