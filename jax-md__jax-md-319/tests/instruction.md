# Issue

**Title:** AMBER Energy Functions

## Description

This draft PR aims to add the AMBER potential energy functions along with some additional MM simulation related features to JAX-MD. Our lab maintains the ReaxFF pull request that was recently merged along with the JAX-ReaxFF optimization suite. We've been internally using this AMBER code for torsion parameter optimization and some hybrid reactive/MM simulations. We are also looking to add missing AMBER features as necessary to make the code more usable for the general public.

- mm_forcefields/amber/energy.py
  - AMBER/CHARMM energy terms. This should cover the basic set of terms used for FF19SB, GAFF/GAFF2, and CHARMM36 along with any other derivative forcefields. In addition to the standard bond/angle/torsion/coulomb/LJ terms, analytic 12-6 LJ dispersion correction, CMAPs, NBFIX exceptions, Improper terms, and Urey-Bradley terms are also supported.

- mm_forcefields/amber/constraints.py
  - CCMA/SETTLE to handle general holonomic distance constraints and rigid water constraints. I can also implement SHAKE, RATTLE, or any other desired algorithms for this, but CCMA is generally one of the best performing to my knowledge.

- mm_forcefields/nonbonded/electrostatics.py
  - I based my code on the original PME implementation by Sam. The implementation in this version of electrostatics module was quite different and missing some features. In particular, the lack of B-spline interpolation, fractional coordinate/triclinic box support, use of N^2 masks and some other sharp edges made it unsuitable for my application. I've ported over the original PME implementation and added additional support for order 5 spline interpolation, perturbations for NPT support, as well as a few other small changes. In addition, for the OPLS code, exclusions and 1-4 exceptions are handled explicitly with post hoc masking. I've tried to avoid this for the most part and treat both as general exceptions that are masked out of the neighbor list and handled based on their exception parameters, including for PME correction bookkeeping. I think this is the most generally applicable approach to this problem if there is the possibility of having NBFIX style exclusions or some mix of zero/non-zero LJ/Coulomb. I've mirrored the approach used in OpenMM and internally in AMBER, but let me know if there are other idiomatic ways of doing this. I also generally think the structure of this class isn't very amenable to the functional programming style used for most of the other energy functions (i.e. stateless energy function generator + dataclass).

- mm_forcefields/base.py & mm_forcefields/oplsaa/params.py
  - I tried to reuse the interface from OPLS as much as possible. The potentials are similar enough that I think most of the code should be based on a common set of data structures at some point. I think most of the classes in here should eventually be converted to dataclass instances from dataclasses.py.

- mm_forcefields/io/openmm.py
  - I don't think writing one off input parsers is generally a good idea. Systems can be parameterized in a variety of ways for a given forcefield and can include a number of different file formats with legacy compatibility issues. ParmEd and OpenFF/OpenMM have the most complete and canonical parsers that I'm aware of for AMBER/CHARMM like systems. In addition, there is a template generator through OpenFF that allows the generation of small molecule parameters via a variety of methods (GAFF/Smirnoff/Espaloma). I've specifically written a parser that takes an OpenMM system as an input and converts it into a JAX compatible dataclass.

- partition.py
  - In the event a more complex energy function supports both periodic and non periodic systems, I think it's most natural to have an idempotent interface when using smap. If energy terms are implemented in terms of smap, you can run into NOBC with/without a cutoff, PBC with a cutoff, and PBC with a unit cell that is small enough that a fallback N^2 list with shifts for multiple images will be needed. I think it makes sense from an interface perspective to be able to treat all of these situations with partition.neighbor_list and then map neighbor-like pair potentials through smap.pair_neighbor_list. As a matter of uniformity, I think it would help for every smap function to eventually accept the same types of mapping schemes.

- smap.py
  - Instead of doing ad-hoc masking, it seems like the smap interface is a better way to deal with pair potentials in general. It seemed like a natural extension to add support for 3 and 4 body interactions. It may even be a good idea to modify these to accept pairs of pairs via broadcasting or passing a trial shape (e.g. bond correlation functions or Phi/Psi pairs for CMAP evaluation). I've also added the binary function mapping from smap.pair_neighbor_list to smap.bond.

- tests/amber_test.py
  - The current tests should have fairly good coverage and energy agreement for most systems is at least within 1e-5 relative tolerance. Although the PME implementation is generally correct, it may still be possible to get even better agreement. More tests for longer trajectories would also help to validate longer term properties of interest. The current suite takes about 10 minutes on a V100, so performance is a concern.

- data/amber_data
  - This directory contains the test systems. There is a small molecule parameterized with GAFF (Sustiva), RAMP1 protein in a variety of water boxes and periodic cells to test virtual site and constraint handling, as well as some of the systems (Both PME/GB) from the Amber20 GPU benchmark suite.

Some tasks that need to be completed before merging include:
- [ ] Linting and test coverage checks
- [ ] A review of the interface changes for the MM interface and ideally more standardization
- [ ] Add type hints and documentation for functions and class structure
- [ ] Add more extensive automated testing on longer simulations
- [ ] Providing Jupyter notebooks for simulations using the energy functions as well as a more advanced example for something like generating torsional scans
- [ ] Performance profiling to improve comparisons to OpenMM (currently slower by ~7x)

In addition, some nice features to implement as needed could include:
- [ ] Better parser for writing out modified forcefields back to valid prmtop, ParmEd structure, or other format
- [ ] Implicit solvent and periodic cutoff functions if needed
- [ ] Single/double/mixed precision modes to better match other MD libraries and improve performance

Any feedback or feature suggestions are appreciated and changes will be posted as the PR is cleaned up for submission.

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `611678af2803`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.