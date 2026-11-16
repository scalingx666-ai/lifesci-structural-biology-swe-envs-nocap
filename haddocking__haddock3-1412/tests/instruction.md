# Issue

**Title:** Alascan with non-standard ligand/molecules/residues

## Description

## Checklist

- [X] Tests added for the new code
- [X] Documentation added for the code changes
- [X] Modifications / enhancements are reflected on the [haddock3 user-manual](https://github.com/haddocking/haddock3-user-manual)
- [X] `CHANGELOG.md` is updated to incorporate new changes
- [X] Does not break licensing
- [X] Does not add any dependencies, if it does please add a thorough explanation

## Summary of the Pull Request  

This PR solved the bug related to ligand "disappearing" from the PDB file during the analysis, when their definition is not part of the standard haddock library of supported residues.
By adding two parameter to the alascan module (`ligand_param_fname` and `ligand_top_fname`), this module is now allowing to perform alanine-scanning on PDB files containing un-supported residues by providing their topology and parameter files.

Small tweaks needed to be applied on the scoring CLI (`cli-score.py`), to also make sure the provided parameter and topology files are used by the `topoaa` module.

## Related Issue

 

## Additional Info

Discovered when supporting a user from the bioexcel forum (https://ask.bioexcel.eu/t/protein-small-molecule-best-approach/5909/8?u=vgpreys)

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `17dc22895531`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.