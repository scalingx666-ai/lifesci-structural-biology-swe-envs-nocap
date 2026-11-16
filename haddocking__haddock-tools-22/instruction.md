# Issue

**Title:** Add create_cif.py

## Description

This adds the `create_cif.py` script and its documentation, it is a standalone port of the webserver machinery to generate `.cif` files. 

The input is a run_directory, it reads data from `/data` and from the `job_params.json` inside the run dir, the output is the same as the one produced by the server.

```
python3 create_cif.py /Users/rodrigo/projects/cif_parser/47518-cif 
[23/02/2021 14:01:16] INFO Converting the cluster*.pdb structures to .cif
[23/02/2021 14:01:16] INFO Looking for models in /Users/rodrigo/projects/cif_parser/47518-cif
[23/02/2021 14:01:16] INFO Found 4 structures
[23/02/2021 14:01:16] INFO Looking for the tblfile field in /Users/rodrigo/projects/cif_parser/47518-cif/job_params.json
[23/02/2021 14:01:16] INFO tblfile field found, extracting information
[23/02/2021 14:01:16] INFO Converting /Users/rodrigo/projects/cif_parser/47518-cif/cluster1_1.pdb
[23/02/2021 14:01:19] INFO Saving as cluster1_1.cif
[23/02/2021 14:01:20] INFO Converting /Users/rodrigo/projects/cif_parser/47518-cif/cluster1_2.pdb
[23/02/2021 14:01:23] INFO Saving as cluster1_2.cif
[23/02/2021 14:01:24] INFO Converting /Users/rodrigo/projects/cif_parser/47518-cif/cluster1_3.pdb
[23/02/2021 14:01:28] INFO Saving as cluster1_3.cif
[23/02/2021 14:01:29] INFO Converting /Users/rodrigo/projects/cif_parser/47518-cif/cluster1_4.pdb
[23/02/2021 14:01:32] INFO Saving as cluster1_4.cif
```

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `370e1611d555`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.