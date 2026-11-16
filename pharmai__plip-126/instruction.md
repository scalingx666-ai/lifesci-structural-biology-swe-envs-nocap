# Issue

**Title:** Fixes a bug when using --nofix

## Description

```
self.protcomplex, self.filetype = read_pdb(self.corrected_pdb, as_string=True)
```
This line ([link](https://github.com/pharmai/plip/blob/8efd24f6d9d59f91d0dbf88237dcf92e0be9f694/plip/structure/preparation.py#L1373) ) sets `as_string=True`, but the `self.corrected_pdb` may fallback to `pdbpath` (when use `--nofix` or PDBParser meets some errors, see [link1](https://github.com/pharmai/plip/blob/8efd24f6d9d59f91d0dbf88237dcf92e0be9f694/plip/structure/preparation.py#L100) and [link2](https://github.com/pharmai/plip/blob/8efd24f6d9d59f91d0dbf88237dcf92e0be9f694/plip/structure/preparation.py#L97) ).

I changed this line to fix this problem.
 
```
self.protcomplex, self.filetype = read_pdb(self.corrected_pdb, as_string= (self.corrected_pdb != pdbpath)) 
```

Thank you.

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `8efd24f6d9d5`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.