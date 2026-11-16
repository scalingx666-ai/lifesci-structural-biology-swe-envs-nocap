# Issue

**Title:** amino3to1 index improvement

## Description

The `amino3to1` method of `biopandas.pdb.PandasPDB` objects now also works as expected if the `'ATOM'` entry DataFrame contains disordered DataFrame indices or duplicate DataFrame index values.

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `fb1296f55553`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.