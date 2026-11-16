# Issue

**Title:** fixed env for mdtraj and pdbfixer

## Description

- mdtraj and pdbfixer should be installed with conga-forge. Updated setup.py and environment.yaml accordingly
- tidied up and organized packages in alphabet order in setup.py
- tidied up tests.yaml (it actually installed pdbfixer twice)

This should make creating new conda environments more seamlessly without errors with recently added packages. Before, it would fail to install mdtraj for new conda environment because it attempted to use pip install

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `bd25c86cb3ab`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.