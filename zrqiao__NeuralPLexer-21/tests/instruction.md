# Issue

**Title:** Fix key prefix for pretrained MHT weights in `mht_encoder.py`

## Description

* Fixes the key prefix for pretrained MHT weights in `mht_encoder.py` to enable reloading of these weights as desired
* This fix comes from loading the `complex_structure_prediction.ckpt` weights and printing out the names of the keys in its `state_dict` attribute: 
![image](https://github.com/zrqiao/NeuralPLexer/assets/7051982/af35d4e5-2fb2-4fb6-af0e-61f4f25c1e55)

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `301f10de0d21`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.