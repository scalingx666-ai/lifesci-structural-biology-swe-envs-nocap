# Issue

**Title:** fixed naming of files when making zip

## Description

I tried to run colab batch on complexes, but got an error saying "[Errno 2] No such file or directory" at line 1147 in batch.py:
`result_zip.write(file, arcname=file.name` 
It looks like the run function was not properly accounting for files (pdbs and jsons) that were renamed during ranking (it was directly reading out the index in model_rank instead of using the value as a key). I switched to enumerate (matching syntax in predict_structure, line 304 in batch.py), and that fixed the problem.

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `079ae0b32f66`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.