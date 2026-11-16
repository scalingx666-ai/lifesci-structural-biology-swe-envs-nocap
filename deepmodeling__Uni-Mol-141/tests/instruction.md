# Issue

**Title:** Physical Conformer Optimization

## Description

In UniMol Docking, performs optimization on the ligand global translation + orientation + rotatable bonds. This guarantees physical bond lengths and angles, and comes at minimal RMSD degradation. It also ensures a fair comparison against docking engines such as Vina and Autodock, which don't optimize coordinates directly but a realistic ligand conformer instead. 

To run, the option `--optimization-model conformer` needs to be passed to `unimol/utils/docking.py`

<img width="967" alt="Captura de Pantalla 2023-08-03 a las 22 53 26" src="https://github.com/dptech-corp/Uni-Mol/assets/16491423/d4867008-51ed-4b0a-ac29-4784f3710171">

<img width="562" alt="Captura de Pantalla 2023-08-03 a las 22 52 45" src="https://github.com/dptech-corp/Uni-Mol/assets/16491423/192ae85a-63e6-4b1d-bb34-50feea9f57a2">

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `edb3c456b11b`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.