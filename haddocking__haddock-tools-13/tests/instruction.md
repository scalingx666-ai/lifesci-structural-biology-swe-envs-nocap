# Issue

**Title:** Add haddockparam.web parser to generate JSON file

## Description

- This script takes a haddockparam.web as input and create a JSON file object that allows some basic operations like `change_value(key, value)` ; `update(subdict_to_replace)` ; `dump_keys()` ; `get_value(key)` ; `write_json()`

- This script or a derivative is used in MDstudio

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `a1e970272943`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.