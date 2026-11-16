# Issue

**Title:** Add docker

## Description

This PR addresses issue #14 and takes a somewhat different approach from the dockerfile posted in #54.  This dockerfile aims to be relatively compact (It comes out to about 8 GB which is large for a docker image but about the same size as the image produced by the alphafold repository). 

As is the best practice for docker, the model files, sequence data, and structural data used by openfold are not included as part of the model, rather, the user should mount directories containing that data as volumes. the Readme file has been updated with example commands for building and running the container. 

In addition to the dockerfile, I made a change to `openfold.np.resources.load_stereo_chemical_props` to load the stereochemical properties using `importlib.resources` rather than a relative path, this allows the user of the code to call it from any working directory. 

One odd thing I ran into was that it was necessary to install openCL in addition to cuda in order for the relax phase of the modeling pipeline to work. I haven't looked into why openMM was refusing to use the cuda platform and insisted on openCL. That said, I tested this and it does seem to work fine using the alphafold weights.

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `52a8b8f31354`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.