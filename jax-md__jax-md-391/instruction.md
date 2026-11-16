# Issue

**Title:** optional thermostat initialization from input momenta

## Description

Hi,

it would be nice to get this feature into the upstream. We are using it for SO3LR (https://github.com/general-molecular-simulations/so3lr), and I think it is broadly useful for restart and externally initialized MD workflows in general.

This PR adds an optional `momenta` argument to the momentum-based simulator `init_fn`s.

Why this is useful:

- supports restart and continuation workflows without re-randomizing the kinetic state
- makes it easier to initialize from externally prepared MD states
- stays consistent with jax-md’s internal momentum-based state representation
- preserves existing behavior when `momenta` is not provided

What changed:

- added optional `momenta` support to the relevant simulator initializers
- kept the default Maxwell-Boltzmann initialization path unchanged
- added focused tests for explicit-momenta initialization and the existing random-init path

If there’s a preferred naming convention, narrower simulator scope, or additional test coverage you’d like, I’d be happy to update the PR.

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `c125b43e3940`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.