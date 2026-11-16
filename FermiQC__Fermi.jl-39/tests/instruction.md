# Issue

**Title:** Major improvement to ecCC

## Description

Changed the Cluster Decomposition from Tensor contractions to element-wise operations. Advantages are:

- When the number of determinants is not too big, using Tensors means operating many zeros;

- No need to allocate memory for arrays;

- Decomposition can be done for just one permutation of T3 and T4, which for that operation can be up to 36x redundant computation. The computation of ecT1 and ecT4 however, still need the 36 operations.

- This new approach was muuuch faster for all cases I tested.

Also I improved the macro `@energy`:

- Now we use `CCSD(T)` instead of `CCSDpT`

- Arguments can be passed, say you have a reference wave function `wfn`. You can pass that to another method by
```
@energy rhf => CCSD
```
or
```
@energy CCSD <= rhf
```

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `168466a046d4`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.