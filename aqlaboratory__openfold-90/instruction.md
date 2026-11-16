# Issue

**Title:** Fix parameter restorage after loading EMA parameters

## Description

This PR fixes a serious bug in training. The original code loads EMA parameters during validation, but fails to restore the training parameters after validation.

In [these lines](https://github.com/aqlaboratory/openfold/blob/main/train_openfold.py#L127-L129), `self.cached_weights = self.model.state_dict()` only keeps a reference to the parameters, rather than a copy. However, `self.model.load_state_dict()` performs an in-place update to the parameters, which unintentionally changes the parameters in `self.cached_weights`. Therefore, [the callback](https://github.com/aqlaboratory/openfold/blob/main/train_openfold.py#L143-L146) at the end of validation step fails to restore the correct parameters.

In other words, the current implementation always replaces the training parameters with EMA parameters at the end of each epoch. Empirically, I found this slows down the convergence very much.

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `c83c42e81cce`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.