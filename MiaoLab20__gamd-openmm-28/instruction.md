# Issue

**Title:** Coordinate interval update

## Description

## Description
This PR provides two improvements and one bug fix. 

The first improvement is the addition of a `coordinates_interval` tag to the outputs_config.reporting config, so that the user can specify the output coordinate interval in the xml input file. 

The second improvement was allowing the use of the mdtraj HDF5Reporter as a coordinate output file type. This file type is more space efficient than the PDB format, while still containing the topology. See [https://mdtraj.org/1.9.4/api/generated/mdtraj.reporters.HDF5Reporter.html#:~:text=HDF5Reporter%20stores%20a%20molecular%20dynamics,be%20stored%20in%20the%20file.](link). 

The last change modifies the loading of PDB position using `openmm_app.PDBxFile()` install of `openmm_app.PDBFile()` which allows for more reproducible system handling of large systems with more than 99999 atoms.

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `bb8f76fa9b3f`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.