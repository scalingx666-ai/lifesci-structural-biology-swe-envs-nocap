# Issue

**Title:** non-flatness check

## Description

Addresses this issue 

Adds a non-flatness check for non-flat 5- and 6-membered rings with the following SMARTS patterns
```
    "nonaromatic_5_membered_rings": "[C,O,S,N&!a]~1[C,O,S,N&!a][C,O,S,N&!a][C,O,S,N&!a][C,O,S,N&!a]1",
    "nonaromatic_6_membered_rings": "[C,O,S,N&!a]~1[C,O,S,N&!a][C,O,S,N&!a][C,O,S,N&!a][C,O,S,N&!a][C,O,S,N&!a]1",
    "nonaromatic_6_membered_rings_db03_0": "[C&!a]~1[C&!a][C,O,S,N&!a]~[C,O,S,N&!a][C&!a][C&!a]1",
    "nonaromatic_6_membered_rings_db03_1": "[C&!a]~1[C&!a][C&!a]~[C&!a][C,O,S,N&!a][C&!a]1",
    "nonaromatic_6_membered_rings_db02_0": "[C&!a]~1[C&!a][C&!a][C,O,S,N&!a]~[C,O,S,N&!a][C&!a]1",
    "nonaromatic_6_membered_rings_db02_1": "[C&!a]~1[C&!a][C,O,S,N&!a][C&!a]~[C&!a][C&!a]1",
```

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `f7b137e32dd9`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.