# Issue

**Title:** Deterministic simulation refactor and NPT.

## Description

This PR contains a refactor of the deterministic simulation environments and the addition of NPT simulations. It also contains a colab notebook demonstrating how to use the new NPT simulations.

For a detailed example of use, I recommend starting with the NPT simulation notebook [here.](https://colab.research.google.com/github/google/jax-md/blob/master/notebooks/npt_simulation.ipynb)

The new simulation code now closely resembles the direct translation method outlined in,

"A Liouville-operator derived measure-preserving integrator for molecular
 dynamics simulations in the isothermal–isobaric ensemble"

M. E. Tuckerman, J. Alejandre, R. López-Rendón, A. L Jochim, and G. J. Martyna
J. Phys. A: Math. Gen. 39 5629 (2006)

In particular, we implement two primitives that are used to construct other simulations: a velocity verlet integrator, and a Nose-Hoover Chain (NHC). In this way, NVE simulations are a single velocity verlet step, NVT simulations are a velocity verlet step along with two NHC half-steps. Finally, NPT simulations have a velocity-verlet like inner loop along with two separate NHCs for the barostat and the thermostat respectively. NPT simulations must use `periodic_general` boundary conditions with fractional coordinates.

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `6c60d5b589ad`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.