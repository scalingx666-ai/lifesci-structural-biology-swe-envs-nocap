# Issue

**Title:** A new option which keeps stereochemistry.

## Description

Here is a jupyter notebook for the illustration: https://github.com/xg590/miscellaneous/blob/master/charnley_rmsd_proof.ipynb

Test the new option, which saves time because 24 enantiomers are skipped.
$ time (for i in {1..10} ;do python rmsd/calculate_rmsd.py tests/c6h7-int1-a.xyz tests/c6h7-int1-xz.xyz --use-reflections;done)
real    0m5.244s
user    0m4.879s
sys     0m0.341s

$ time (for i in {1..10} ;do python rmsd/calculate_rmsd.py tests/c6h7-int1-a.xyz tests/c6h7-int1-xz.xyz --use-reflections-keep-stereo;done)
real    0m4.376s
user    0m4.035s
sys     0m0.321s

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `f2cc866b2d6c`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.