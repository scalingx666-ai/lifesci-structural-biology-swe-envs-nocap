# Issue

**Title:** v0.2.1

## Description

Version 0.2.1dev



##### Changes

- The `amino3to1` method of `biopandas.pdb.PandasPDB` objects now returns a pandas `DataFrame` instead of a pandas `Series` object. The returned data frame has two columns, `'chain_id'` and `'residue_name'`, where the former contains the chain ID of the amino acid and the latter contains the 1-letter amino acid code, respectively.
-  Significant speed improvements of the `distance` method of both `PandasPdb` and `PandasMol2` (now about 300 percent faster than previously).

##### Bug Fixes

- The `amino3to1` method of `biopandas.pdb.PandasPDB` objects now handles multi-chain proteins correctly.
- The `amino3to1` method of `biopandas.pdb.PandasPDB` objects now also works as expected if the `'ATOM'` entry DataFrame contains disordered DataFrame indices or duplicate DataFrame index values.

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `802f1a6b8f05`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.