# Issue

**Title:** Allow for chain selection in CNS scoring modules

## Description

## Checklist

- [x] Tests added for the new code
- [x] Documentation added for the code changes
- [x] Modifications / enhancements are reflected on the [haddock3 user-manual](https://github.com/haddocking/haddock3-user-manual)
- [x] `CHANGELOG.md` is updated to incorporate new changes
- [X] Does not break licensing
- [X] Does not add any dependencies, if it does please add a thorough explanation

## Summary of the Pull Request  

This PR adds a new parameters `interface_combinations = []` in CNS scoring modules (`emscoring` and `mdscoring`).
```
Each entry must be composed of two coma separated chains
     e.g.: 
     []             -> Consider all interfaces (default)
     ["A,B"]        -> Consider only the interface score between A and B
     ["A,H", "A,L"] -> Sum interface scores between A,H and A,L
```

Note that the header of the PDB file is not modified, but only the `score` attribute written in the `io.json` is affected.

As this addition is used by both `emscoring` and `mdscoring` modules, it has been implemented in their shared class `CNSScoringModule` in `module/scoring/__init__.py`.

The reading of the score components from PDB files has been displaced from the `CNSScoringModule` to the `HaddockModel`.

Finally, small optimization to reduce IO when performing the `per_interface_output`, where now the PDB files are not read twice.

Unfortunately had to add antibody-antigen pdb structure + psf file for the integration tests...

## Related Issue

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `cbf405d459a9`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.