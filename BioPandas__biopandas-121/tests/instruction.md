# Issue

**Title:** update af2 versions to latest

## Description

### Description

Updates Alphafold version  as older ones (v1 + v2) no longer appear to be supported

Broken:
v1: https://alphafold.ebi.ac.uk/files/AF-A0A1U8FD60-F1-model_v1.pdb
v2: https://alphafold.ebi.ac.uk/files/AF-A0A1U8FD60-F1-model_v2.pdb

Working:
v3: https://alphafold.ebi.ac.uk/files/AF-A0A1U8FD60-F1-model_v3.pdb
v4: https://alphafold.ebi.ac.uk/files/AF-A0A1U8FD60-F1-model_v4.pdb

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `927b6ea81579`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.