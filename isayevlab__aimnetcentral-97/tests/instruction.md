# Issue

**Title:** test: cover dark branches; fix cv_split fold corruption

## Description

Coverage measurement (full local run incl. GPU and slow markers: 65.3% lines, 800 missing branches) ranked the training stack as the darkest area (metrics.py 10%, export_model.py 0%, train/utils.py 16%). This adds seven targeted tests for the top unit-testable gaps: RegMultiMetric/regression_stats, the aimnet-export helper layer, SizeGroupedDataset.cv_split/concatenate, train.utils config/parameter helpers, and LRCoulomb constructor validation.

Writing the cv_split test surfaced a real bug, fixed here: DataGroup.cv_split built each fold's train split by cat()-ing shared parts **in place**, corrupting the parts used by subsequent folds — later folds contained duplicated samples and validation splits larger than the whole dataset (e.g. 3-fold on 195 samples produced a 260-sample val fold). Folds are now assembled without mutating the shared parts.

Gate: full CPU suite 486 passed, ruff/format clean.

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `ad607a036a0e`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.