# Issue

**Title:** fix amino3to1 to handle multiple chain_ids

## Description

The `amino3to1` now correctly handles multi-chain PDBs and residue-number duplicates. The return value has been changes from a `pandas.Series` to a `pandas.DataFrame` as shown below:

```python
from biopandas.pdb import PandasPdb
ppdb = PandasPdb().fetch_pdb('5mtn')
sequence = ppdb.amino3to1()
sequence.tail()
```

![screen shot 2017-04-12 at 2 22 26 pm](https://cloud.githubusercontent.com/assets/5618407/24974424/181b898c-1f90-11e7-81bc-362021fcdaae.png)

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `da7668d866f9`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.