# Issue

**Title:** Fix propagation of use_flash for offloaded inference

## Description

This change fixes an issue where `_forward_offload()` was being passed the parameter `use_flash` but didn't accept the parameter `use_flash`. This also passes `use_flash` along to `_prep_blocks()` since it's a required parameter.

## Context

When running `run_pretrained_openfold.py` with the config for `offload_inference` enabled, this error occurred:

```
Traceback (most recent call last):
  File "/.../shared/openfold/run_pretrained_openfold.py", line 591, in <module>
    main(args)
  File "/.../shared/openfold/run_pretrained_openfold.py", line 439, in main
    out = run_model(model, processed_feature_dict, tag, args)
  File "/.../shared/openfold/run_pretrained_openfold.py", line 119, in run_model
    out = model(batch)
  File "/.../shared/openfold/lib/conda/envs/openfold_venv/lib/python3.7/site-packages/torch/nn/modules/module.py", line 1130, in _call_impl
    return forward_call(*input, **kwargs)
  File "/.../shared/openfold/openfold/model/model.py", line 510, in forward
    _recycle=(num_iters > 1)
  File "/.../shared/openfold/openfold/model/model.py", line 384, in iteration
    _mask_trans=self.config._mask_trans,
TypeError: _forward_offload() got an unexpected keyword argument 'use_flash'
```

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `3de3bcb9a0c8`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.