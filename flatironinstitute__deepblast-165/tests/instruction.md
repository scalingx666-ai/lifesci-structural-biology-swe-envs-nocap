# Issue

**Title:** migrated to newer version of lightning

## Description

Using the official migration guide available at . The `validation_epoch_end` function was replaced with `on_validation_epoch_end`, so I updated the `DeepBLAST` class to ensure compatibility with `pytorch-lightening` and fixed the following error: 

```
NotImplementedError: Support for `validation_epoch_end` has been removed in v2.0.0. 
`DeepBLAST` implements this method. You can use the `on_validation_epoch_end` hook instead. 
To access outputs, save them in-memory as instance attributes.
```

Additionally, I resolved a deprecation warning caused by the use of `np.bool` by switching to `bool`

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `20b527268f49`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.