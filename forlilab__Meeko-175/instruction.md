# Issue

**Title:** remove unneeded code for prody to rdkit conversion

## Description

All considered Prody objects (AtomGroup, Selection, Residue, Chain) yield Prody atoms when iterated over with a `for` loop. Hence, there is no need for separate functions to convert each of these types to an RDKit molecule. This commit simplifies the code by simply iterating over any of the prody types.

The types are different only with respect to the `getBonds()` method: only the `AtomGroup` implements it. Thus, the other types must call `getAtomGroup()` first. It should be noted that Prody ignores bonds from mmCIF files even if bonds are present.

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `4eff7588c741`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.