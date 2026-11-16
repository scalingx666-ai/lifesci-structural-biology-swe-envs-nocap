# Issue

**Title:** Fix PandasMol2.rmsd normalizing by total atom count instead of heavy-atom count

## Description

## The problem

`PandasMol2.rmsd()` computes the sum of squared deviations over **hydrogen-filtered** atoms when `heavy_only=True` (the default), but divides that sum by the **unfiltered** atom count:

```python
if heavy_only:
    d1 = df1[df1["atom_type"] != "H"]
    d2 = df2[df2["atom_type"] != "H"]
...
total = (... on d1 ... / d2 ...)
rmsd = round((total.sum() / df1.shape[0]) ** 0.5, 4)   # <-- df1, not d1
```

The divisor still counts the hydrogens that were just discarded, so it is larger than the number of terms actually in the sum. The reported RMSD is therefore understated by a factor of `sqrt(n_total / n_heavy)`.

For the bundled fixtures that is `sqrt(32 / 20)`: the function reports **1.1609** where the correct heavy-atom RMSD is **1.4684** — a ~21% error in a number whose entire purpose is comparing structures.

## Reproduction

```python
from biopandas.mol2 import PandasMol2
from biopandas.mol2.pandas_mol2 import PandasMol2 as PM
import biopandas.mol2.pandas_mol2 as m
import os

base = os.path.join("tests", "mol2", "data")
d1 = PandasMol2().read_mol2(os.path.join(base, "1b5e_1.mol2")).df
d2 = PandasMol2().read_mol2(os.path.join(base, "1b5e_2.mol2")).df

n_total = d1.shape[0]                                   # 32
h1 = d1[d1["atom_type"] != "H"]
n_heavy = h1.shape[0]                                   # 20

sq = ((h1["x"].values - d2[d2["atom_type"] != "H"]["x"].values) ** 2
      + (h1["y"].values - d2[d2["atom_type"] != "H"]["y"].values) ** 2
      + (h1["z"].values - d2[d2["atom_type"] != "H"]["z"].values) ** 2)

print("correct  :", round((sq.sum() / n_heavy) ** 0.5, 4))   # 1.4684
print("reported :", PandasMol2.rmsd(d1, d2))                  # 1.1609  <-- wrong
```

## The fix

One character, in `biopandas/mol2/pandas_mol2.py`:

```diff
-        rmsd = round((total.sum() / df1.shape[0]) ** 0.5, 4)
+        rmsd = round((total.sum() / d1.shape[0]) ** 0.5, 4)
```

`d1` is the frame the sum was accumulated over, so the divisor now always matches the number of terms in the sum. The `heavy_only=False` path is provably unaffected: in that branch `d1 is df1`, so the divisor is unchanged and the existing assertion still holds.

## Testing

The existing `test_rmsd` expectation for the default path is corrected from `1.1609` to the correct `1.4684`, and a new test recomputes the expected value independently from the filtered frames and additionally asserts the result differs from the value the unfiltered divisor would produce — so the old behaviour cannot silently come back.

Proof the test actually catches the bug (source reverted to `HEAD`, tests kept):

```
FAILED tests/mol2/test_pandas_mol2.py::test_rmsd - assert np.float64(1.1609) ...
FAILED tests/mol2/test_pandas_mol2.py::test_rmsd_heavy_only_normalizes_by_compared_atoms
2 failed, 6 passed
```

With the fix:

```
tests/mol2/test_pandas_mol2.py .......                                    8 passed
full suite: 135 passed, 9 skipped, 14 xfailed                             (115s)
ruff check biopandas/mol2/pandas_mol2.py tests/mol2/test_pandas_mol2.py   All checks passed!
```

Note: `ruff format --check` reports both files would be reformatted, but every one of those hunks is at line 1, 198, 286 and test line 54 — all pre-existing upstream formatting untouched by this change, left alone deliberately rather than folding a drive-by reformat into a bug fix.

.

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `177136248347`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.