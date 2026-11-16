# Issue

**Title:** Enhance run info

## Description

1. Add a missing colon.
2. Skip printing information for empty groups. Currently, the printed message would be:

```
Medium Group:
Max num_atoms: -2147483648 Max num_torsions: -2147483648 Max num_rigids: -2147483648 Max num_lig_pairs: -2147483648
Group size: 0
Large Group:
Max num_atoms: -2147483648 Max num_torsions: -2147483648 Max num_rigids: -2147483648 Max num_lig_pairs: -2147483648
Group size: 0
Extra Large Group:
Max num_atoms: -2147483648 Max num_torsions: -2147483648 Max num_rigids: -2147483648 Max num_lig_pairs: -2147483648
Group size: 0
```

Applying this commit would change this to:

```
Medium Group:
Large Group:
Extra Large Group:
```

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `e94916227adf`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.