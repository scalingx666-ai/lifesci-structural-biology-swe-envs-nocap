# Issue

**Title:** Drop chains that are missing (structure) data in training

## Description

This PR moves `chain_data_cache_paths` from `OpenFoldDataset` (where it was a list, one per dataset)  to a single string `chain_data_cache_path` in `OpenFoldSingleDataset`. This makes it convenient to drop entries (with a warning) where we have alignments but no structure data, instead of crashing.

The motivation here was that while trying to start a small training run, I was hitting an issue where a few chains were present in my alignment data (downloaded from RODA) but absent in my pdb_mmcif dir (downloaded from PDB via download_pdb_mmcif.sh). I see there is now `scripts/download_roda_pdbs.sh` to address this but I thought it might be good to be able handle this error a bit better anyway.

Curious if you think this makes sense @gahdritz 

I also note a few tests are failing for me here, but the same tests appear to be failing for me on `main` (basic inference and training seems to work). If you approve the PR I'd rather have you wait though to merge it so I can check more carefully it's not breaking anything.

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `12caaa89f325`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.