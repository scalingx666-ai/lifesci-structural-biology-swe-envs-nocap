# Issue

**Title:** Implement initial guess feature

## Description

Hi,

This pull request implements the `--initial-guess` feature, inspired by the functionality available in .

### Related issue: 
- #432

### Description:
- It enables the handling of protein structure inputs (`.pdb` and `.cif`) - using alphafold parser
- The introduction of the `--initial-guess` flag allows for the utilization of protein structure atom positions as input. This can be achieved either through the primary input or by specifying the structure input after the `--initial-guess` flag.

- Minor adjustments to the Alphafold code have been made to accommodate this new feature:
-

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `0625defe8b52`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.