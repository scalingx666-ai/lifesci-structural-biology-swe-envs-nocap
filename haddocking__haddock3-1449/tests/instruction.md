# Issue

**Title:** Fixed the use of restraints in the presence of ions in flexref module

## Description

You are about to submit a new Pull Request. Before continuing make sure you read the [contributing guidelines](CONTRIBUTING.md).

## Checklist

- [ ] Tests added for the new code
- [ ] Documentation added for the code changes
- [ ] Modifications / enhancements are reflected on the [haddock3 user-manual](https://github.com/haddocking/haddock3-user-manual)
- [X] `CHANGELOG.md` is updated to incorporate new changes
- [X] Does not break licensing
- [X] Does not add any dependencies, if it does please add a thorough explanation

## Summary of the Pull Request  

Modified `flexref.cns` to first deal with the presence of ions (adds a fake covalent bond for torsion angle dynamics) and then read the distance restraints (i.e. changed the order of those steps in the CNS script).

Added a docking example (`docking-protein-zinc-finger`) including zinc ions to illustrate how to define restraints to ions.
 
## Related Issue

#1445 

## Additional Info

If the topology is changed in CNS (which is the case when adding a fake bond to an ion), the restraint database is erased.

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `cbaf2012a827`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.