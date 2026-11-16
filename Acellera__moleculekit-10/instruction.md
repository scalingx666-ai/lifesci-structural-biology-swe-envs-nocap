# Issue

**Title:** Replaces viewCrystalPacking with generateCrystalPacking function

## Description

At the beginning of this year, I was dealing with some structures from the PDB whose full structural information could only be get by generating the crystal packing / symmetry mates. This happens a lot in the PDB, specially in complexes and bigger structures. You can read more about it here: https://pdb101.rcsb.org/learn/guide-to-understanding-pdb-data/biological-assemblies

I found that the functionality of `viewCrystalPacking` isn't actually very useful. What is needed is a function that allows to generate the crystal packing and return it as a new Molecule object, rather than just visualizing it. This is what is implemented here.

I changed the `viewCrystalPacking`, because I think the original function is not very useful. The new function can also allow visualization if necessary. @stefdoerr, you may refactor as you see fit, maybe you don't like my approach, but the main message is the same: there should be a function that returns a Molecule with the crystal packing, so that it can be manipulated and built for simulation.

Additionally, I also removed the viewcrystalpacking method from Molecule. I did that on a separate commit, in case we want to revert it. I think that method makes little sense, as it is not a general Molecule method but something that will only work for PDBs and only for those with crystal information.

Let me know what you think and we can work together in case something can be improved.

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `6263f2866b54`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.