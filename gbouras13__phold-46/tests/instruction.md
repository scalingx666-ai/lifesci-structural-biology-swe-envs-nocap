# Issue

**Title:** set db dir under PHOLD_DBDIR environement variable control

## Description

Hello, 

suggestion to have phold database directory under possible control via PHOLD_DBDIR environment variable.
this allow to separate the phold installation from large database directory (> 7G) 

NB context 
1) we package our tools using  .rpm//.deb packages this will allow me to reduce the package footprint)
2) will allow  to update phold databases (if needed) whithout ingterfering with the packages.

regards

Eric

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `0f7b2836c44d`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.