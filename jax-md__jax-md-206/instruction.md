# Issue

**Title:** Simulation Refactor & Rigid Body Dynamics

## Description

This PR contains two separate, but related changes.

The first change refactors the NVE and NVT Nose Hoover simulation environments (with others to follow). This refactor uses single dispatch to infer the initialization of momenta and the inner part of the Suzuki-Trotter decomposition from the type of the position argument. This allows simulations to transparently handle different kinds of objects including normal point-particles, rigid bodies, and neural networks. This refactor also **switches from using velocity as the internal representation for the simulations to using momentum** since the notion of momentum and conjugate momentum is more general.

The second change adds support for rigid body simulations (and generally simulations of bodies that are described by both a position and an orientation). This change includes the addition of a quaternion data type, single dispatch overloads for the simulation functions discussed above, and helper functions to describe interactions between rigid bodies that are composed of rigid assemblies of point-like particles.

Some details:

**Simulation Refactor:**

JAX MD allows for simulations to be extensible using single
dispatch. For those familiar with C / C++, single dispatch is essentially
function overloading based on the type of the first argument. For those
unfamiliar, single dispatch chooses which version of a function to call by
looking up the type of the first argument. If you are interested in setting up
a simulation using a different type of system you can do so in a relatively
light weight manner by introducing a new type for storing the state that is
compatible with the JAX PyTree system (we usually choose a dataclass) and then
overriding the four functions below.

These extensions allow a range of simulations to be run by just changing the
type of the position argument. In general, the most complicated function will
be the `inner_update_fn` which should be induced by the Suzuki-Trotter
decomposition for a given simulation environment. At the moment this set of
extensible functions works with deterministic NVE and NVT simulation
environments but not NPT or stochatic ones (like Langevin or Brownian). If that
use-case is important to you, please raise an issue. It is likely there will be
an additional function lookup needed in those cases.

**Rigid Body Simulations:**

Rigid body simulations are split into two components.

1. The state of rigid bodies are represented by a dataclass containing a
center-of-mass position and an orientation. Along with this type
representation, the core simulation functions are overloaded to automatically
allow deterministic NVE and NVT simulations to work with state composed of
RigidBody objects (see `simulation.py` for details). If you need any other
simulation environments, please raise a github issue.

- One subtlety of the type system that we use here is that a host of related
quantities are represented by RigidBody objects. For example, the momentum
is represented by a RigidBody containing the linear momentum and angular
momentum, while the mass is a RigidBody containing the total mass and the
moment of inertia. This allows us to naturally use JAX's tree_map utilities
to jointly map over the different related quantities. Additionally, forces
inherit the RigidBody type with a center-of-mass force and torque.

2. Interactions between rigid bodies are specified. This is largely responsible
for dictating the shape of the rigid body. While arbitrary interactions are
possible, we include utility functions for producing rigid bodies that are
made by the union of point-like particles. This captures many common models
of rigid molecules and colloids. These functions work by providing a
RigidPointUnion object that specifies the location of point particles in the
body frame along with a pointwise energy function. This approach works with or
without neighbor lists and yields a function that computes the total energy on
a system of rigid bodies.

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `e13f48fcf6a1`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.