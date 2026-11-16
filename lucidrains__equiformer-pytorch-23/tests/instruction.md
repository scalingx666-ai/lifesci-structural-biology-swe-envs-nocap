# Issue

**Title:** [refactor] basis_keys to list

## Description

Cast basis keys to list so it can be serialised in torch.save()

If not, this happens (tested on PyTorch 2.5.1+cu124)

> torch.save(model, "test.pt")
Traceback (most recent call last):
  File "<stdin>", line 1, in <module>
  File "/home/hilbert/miniconda3/envs/.../lib/python3.11/site-packages/torch/serialization.py", line 850, in save
    _save(
  File "/home/hilbert/miniconda3/envs/.../lib/python3.11/site-packages/torch/serialization.py", line 1088, in _save
    pickler.dump(obj)
TypeError: cannot pickle 'dict_keys' object

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `3d5a1b5aa499`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.