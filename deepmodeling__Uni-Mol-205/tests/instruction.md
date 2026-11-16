# Issue

**Title:** fix multilabel datareader bug

## Description

Demo
```python
from unimol_tools import MolTrain
import numpy as np
custom_data ={'target':np.random.randint(2, size=(100, 10)),  # multilabel
            'atoms':[['C','C','H','H','H','H'] for _ in range(100)],
            'coordinates':[np.random.randn(6,3) for _ in range(100)],
            }

clf = MolTrain(
    task = 'multilabel_classification',
    save_path = 'tmp_exp'
    )
clf.fit(custom_data)
```
_ValueError: Per-column arrays must each be 1-dimensional_

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `60663811d465`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.