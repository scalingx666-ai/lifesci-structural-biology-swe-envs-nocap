# Issue

**Title:** Athermal linear elasticity

## Description

Here is my first pass at functionality to calculate linear elastic constants. I still need to write unit tests, but I wanted to get this into a PR in case anyone wanted to take a look and give feedback. There are some tests already in the tutorial [notebook](https://github.com/cpgoodri/jax-md/blob/elasticity/notebooks/Athermal_Linear_Elasticity.ipynb) that I added, as well as theoretical description of the calculation.

The implementation should perform well under AD. The most computationally intensive part is solving a large system of equations, which is done using a hessian-vector-product combined with `jsp.sparse.linalg.cg`, which uses implicit differentiation for reverse-mode AD. 

Comments, suggestions welcome.

P.S. Right now, this uses linear response calculations to calculate the elastic constants, but this only works for systems at zero temperature that are at a local energy minimum. For finite temperature systems, I think the approach would be for the user to pass a function that takes a strain tensor, runs some appropriate dynamics, and either returns an energy or (probably better) a stress tensor. The non-AD based approach (e.g. what LAMMPS does) is to run this with a variety of small strain tensors and calculate the elastic constants through finite differences, but we could do it with forward-mode AD. I've thought about this a bit but haven't implemented anything (and I'm not 100% sure if I'll have time in the near future).

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `4a4f10d7e6f5`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.