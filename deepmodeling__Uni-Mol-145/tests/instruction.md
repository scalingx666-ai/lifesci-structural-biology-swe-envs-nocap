# Issue

**Title:** 6+T+S: Correct stereochemistry in conformer optimization

## Description

This PR solves the problem of unspecified stereochemistry in the docking task. It also adds some improvements: 
* Function to re-process the `.lmdb` data for the CASF2016 and preserve the correct stereochemistry.
<img width="329" alt="Captura de Pantalla 2023-08-22 a las 0 00 15" src="https://github.com/dptech-corp/Uni-Mol/assets/16491423/9e866f65-f980-4f5b-b31d-50fda2644014">

* Symmetry-aware RMSD calculations
* Improvements to 6+T optimization so only rotatable bonds are optimized (ex. double bonds are not rotatable)
* Close approximation to conformer sampling as described in the UniMol paper (2000 conformers, 10 clusters) and enablement of multi threading in multiple conformer sampling. 

It also sheds light on potential harmful steps that were present before, such as torsion randomization which can cause stereochemistry inversion (ex. in `PDB: 2ZCR`) and stereochemistry under-specification from the known molecule. 
<img width="339" alt="Captura de Pantalla 2023-08-21 a las 23 58 56" src="https://github.com/dptech-corp/Uni-Mol/assets/16491423/c46c1d91-1d01-4fe8-8970-b64176310ca8">

If all these measures are taken, 6+T+S optimization becomes better than coordinates in absolute terms (%<2A) and also structures are much higher quaility (physical soundness) and higher chemical resolution (stereochemistry). 
<img width="445" alt="Captura de Pantalla 2023-08-22 a las 0 10 29" src="https://github.com/dptech-corp/Uni-Mol/assets/16491423/8aaf62e9-a04f-4349-a490-b0daff20ee7f">

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `542aa1979431`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.