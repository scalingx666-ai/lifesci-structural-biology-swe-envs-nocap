# Issue

**Title:** Fix graph sequence (atomistic graphs in `initialise_graph_with_metadata` had duplicated residues)

## Description

This ensures that atomistic level graphs have the same sequence (for each `c` in `chain_ids`) as those created with `CA` or residue granularity. 


Tested with an assertion (comparing sequences from residue and atomistic graphs).

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `87985a157623`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.