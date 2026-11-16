# Issue

**Title:** Support using OpenMPI to train model

## Description

This PR will extremely helpful to someone just has CPU clusters 

Usage: 
```
mpirun -np $NSLOTS python $SEVENN_PATH/sevenn_train_mpi.py input.yaml --distributed --distributed_backend='mpi'
```

@YutackPark 
The file 'sevenn_train_mpi.py' can replace file `main/sevenn.py`. But I temporary put a separate file in root folder for the case you don't like it, then you can remove easily.

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `cbf8fb291c96`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.