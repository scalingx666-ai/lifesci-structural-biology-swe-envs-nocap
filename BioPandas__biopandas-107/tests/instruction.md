# Issue

**Title:** Add mmCIF -> PDB conversion

## Description

#108

### Description
Adds support for writing PDB files to filestreams.

I started adding the conversion method proposed by @mrauha.

I ran into an issue writing the test:

```python
from pandas.testing import assert_frame_equal

def test_mmcif_pdb_conversion():
    pdb =PandasPdb().fetch_pdb("3EIY")
    mmcif = PandasMmcif().fetch_mmcif("3EIY")
    mmcif_pdb = mmcif.get_pandas_pdb()
    
    assert_frame_equal(pdb.df["ATOM"].drop(columns=["line_idx"]), mmcif_pdb.df["ATOM"].drop(columns=["line_idx"]))
    assert_frame_equal(pdb.df["HETATM"].drop(columns=["line_idx"]), mmcif_pdb.df["HETATM"].drop(columns=["line_idx"]).reset_index(drop=True))
```

Which gives an error relating to atom numbering in the HETATM dataframes:
```python
AssertionError                            Traceback (most recent call last)
/Users/arianjamasb/github/biopandas/dev.ipynb Cell 7' in <cell line: 11>()
      [8](vscode-notebook-cell:/Users/arianjamasb/github/biopandas/dev.ipynb#ch0000003?line=7)     assert_frame_equal(pdb.df["ATOM"].drop(columns=["line_idx"]), mmcif_pdb.df["ATOM"].drop(columns=["line_idx"]))
      [9](vscode-notebook-cell:/Users/arianjamasb/github/biopandas/dev.ipynb#ch0000003?line=8)     assert_frame_equal(pdb.df["HETATM"].drop(columns=["line_idx"]), mmcif_pdb.df["HETATM"].drop(columns=["line_idx"]).reset_index(drop=True))
---> [11](vscode-notebook-cell:/Users/arianjamasb/github/biopandas/dev.ipynb#ch0000003?line=10) test_mmcif_pdb_conversion()

/Users/arianjamasb/github/biopandas/dev.ipynb Cell 7' in test_mmcif_pdb_conversion()
      [6](vscode-notebook-cell:/Users/arianjamasb/github/biopandas/dev.ipynb#ch0000003?line=5) mmcif_pdb = mmcif.get_pandas_pdb()
      [8](vscode-notebook-cell:/Users/arianjamasb/github/biopandas/dev.ipynb#ch0000003?line=7) assert_frame_equal(pdb.df["ATOM"].drop(columns=["line_idx"]), mmcif_pdb.df["ATOM"].drop(columns=["line_idx"]))
----> [9](vscode-notebook-cell:/Users/arianjamasb/github/biopandas/dev.ipynb#ch0000003?line=8) assert_frame_equal(pdb.df["HETATM"].drop(columns=["line_idx"]), mmcif_pdb.df["HETATM"].drop(columns=["line_idx"]).reset_index(drop=True))

    [... skipping hidden 2 frame]

File ~/opt/anaconda3/envs/biopandas/lib/python3.8/site-packages/pandas/_libs/testing.pyx:52, in pandas._libs.testing.assert_almost_equal()

File ~/opt/anaconda3/envs/biopandas/lib/python3.8/site-packages/pandas/_libs/testing.pyx:167, in pandas._libs.testing.assert_almost_equal()

File ~/opt/anaconda3/envs/biopandas/lib/python3.8/site-packages/pandas/_testing/asserters.py:682, in raise_assert_detail(obj, message, left, right, diff, index_values)
    679 if diff is not None:
    680     msg += f"\n[diff]: {diff}"
--> 682 raise AssertionError(msg)

AssertionError: DataFrame.iloc[:, 1] (column name="atom_number") are different

DataFrame.iloc[:, 1] (column name="atom_number") values are different (100.0 %)
[index]: [0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, ...]
[left]:  [1332, 1333, 1334, 1335, 1336, 1337, 1338, 1339, 1340, 1341, 1342, 1343, 1344, 1345, 1346, 1347, 1348, 1349, 1350, 1351, 1352, 1353, 1354, 1355, 1356, 1357, 1358, 1359, 1360, 1361, 1362, 1363, 1364, 1365, 1366, 1367, 1368, 1369, 1370, 1371, 1372, 1373, 1374, 1375, 1376, 1377, 1378, 1379, 1380, 1381, 1382, 1383, 1384, 1385, 1386, 1387, 1388, 1389, 1390, 1391, 1392, 1393, 1394, 1395, 1396, 1397, 1398, 1399, 1400, 1401, 1402, 1403, 1404, 1405, 1406, 1407, 1408, 1409, 1410, 1411, 1412, 1413, 1414, 1415, 1416, 1417, 1418, 1419, 1420, 1421, 1422, 1423, 1424, 1425, 1426, 1427, 1428, 1429, 1430, 1431, ...]
[right]: [1331, 1332, 1333, 1334, 1335, 1336, 1337, 1338, 1339, 1340, 1341, 1342, 1343, 1344, 1345, 1346, 1347, 1348, 1349, 1350, 1351, 1352, 1353, 1354, 1355, 1356, 1357, 1358, 1359, 1360, 1361, 1362, 1363, 1364, 1365, 1366, 1367, 1368, 1369, 1370, 1371, 1372, 1373, 1374, 1375, 1376, 1377, 1378, 1379, 1380, 1381, 1382, 1383, 1384, 1385, 1386, 1387, 1388, 1389, 1390, 1391, 1392, 1393, 1394, 1395, 1396, 1397, 1398, 1399, 1400, 1401, 1402, 1403, 1404, 1405, 1406, 1407, 1408, 1409, 1410, 1411, 1412, 1413, 1414, 1415, 1416, 1417, 1418, 1419, 1420, 1421, 1422, 1423, 1424, 1425, 1426, 1427, 1428, 1429, 1430, ...]
```

Any idea of the source of the discrepancy?

**Update:** This seems to be fixed now! 🥳


### Related issues or pull requests
#97


### Pull Request Checklist

<!--
Please fill out the following checklist if applicable. For more more information and help, please see the Contributor Documentation avaialable at http://rasbt.github.io/biopandas/contributing/.
-->

- [x] Added a note about the modification or contribution to the `./docs/sources/CHANGELOG.md` file (if applicable)
- [x] Added appropriate unit test functions in the `./biopandas/*/tests` directories (if applicable)
- [ ] Modify documentation in the corresponding Jupyter Notebook under `biopandas/docs/sources/` (if applicable)
- [ ] Ran `PYTHONPATH='.' pytest ./biopandas -sv` and make sure that all unit tests pass (for small modifications, it might be sufficient to only run the specific test file, e.g., `PYTHONPATH='.' pytest ./biopandas/classifier/tests/test_stacking_cv_classifier.py -sv`)
- [ ] Checked for style issues by running `flake8 ./biopandas`


<!--NOTE  
Due to the improved GitHub UI, the squashing of commits is no longer necessary.
Please DO NOT SQUASH commits since they help with keeping track of the changes during the discussion).
-->

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `092a6a8f4aa4`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.