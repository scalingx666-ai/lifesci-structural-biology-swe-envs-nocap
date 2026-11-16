# Issue

**Title:** Add option to generate bits info for PLEC fingerprints

## Description

Addresses #118 

@luponzo86 Could you check if this branch works for you? The return API has not changed the `bits_info` dictionary is modified in-place, so you need to feed an instance to PLEC fp.

```python
bits_info = {}
PLEC(ligand, protein, bits_info=bits_info)
print(bits_info)
```

The dictionary contains mapping between bits and ligand/protein root atom IDXs plus the depths. Let me know what you think about this capability.

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `c3e6a90a81af`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.