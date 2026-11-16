# Issue

**Title:** Fix f90wrap install

## Description

# Notes for user:

- Basically the only requirement is python 3 with ASE (numpy is already required by ASE). I think each user should decide which version of numpy and ase wants to isnstall. Of course the minimum versions should be mentioned but not nessesarry to maintain the requirement.txt to force the users.


## Installing the `f90wrap` package:

- if pip is installed
  ```
  pip install src/f90wrap
  ```

- if pip is not available:
  ```
  cd src/f90wrap
  python setup.py install
  ```

# Developer notes:

- These notes can be added to the readme file.


## Cloning the repo:
  ```
  git clone --recursive https://github.com/libAtoms/QUIP.git

  ```

  Alternativle you can clone it wothout the submodules:
  ```
  git clone https://github.com/libAtoms/QUIP.git
  ```

  And you can initialise the submodules when its nedded:
  ```
  cd QUIP
  git submodule update --init --recursive
  ```

## Fixing/updating the version f90wrap:

  ```bahs
  cd src/f90wrap
  ```
  ```bash 
  git checkout <commit> 
  ```
  OR 
  ```bash 
  git checkout master

  ```
  Updating the version in the `QUIP` repository:
  ```
  cd ../..
  git add src/f90wrap
  git commit -m "updating the version of f90wrap"
  ```

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `3ac45a15555b`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.