# Issue

**Title:** fixing CUDA versions in dockerfile and a small bug in run_pretrained_openfold.py

## Description

This PR addresses two issues I ran into recently: 

1) pytorch 1.10 only supports cuda 10.2 or 11.3 as distributed in conda, but the version of openmm required (7.5) doesn't support 11.3, only 10.2, so in order for everything to work well we need to dockerfile to use cuda 10.2 not 11.1
2) if you dont have `CUDA_VISIBLE_DEVICES` in your environment but do specify the `--model_device` flag when runnint `run_pretrained_openfold.py` you get an error at the end of the script when `os.setenv` tries to cast a `None` into a string, a more sensible default for the missing environment variable is `""`

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `a43848dc162d`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.