# Issue

**Title:** I have created a setup file using setuptools for easy installation of dependency

## Description

This PR allows the dependency to be installed in one step

```
git clone https://github.com/wlsong/PyLipID.git
cd PyLipID
conda create -n PyLipID python=3
conda activate PyLipID
python setup.py install
```

Then the program can be run by activating the environment and call directly.

```
conda activate PyLipID
pylipid.py -f ./run_1/md.xtc ./run_2/md.xtc -c ./run_1/protein_lipids.gro ./run_2/protein_lipids.gro 
-cutoffs 0.55 1.4 -lipids POPC CHOL POP2 -nprot 1 -resi_offset 5 -plot_koff -save_dataset
```

However, the description does need to filled in.

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `586d9cf17652`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.