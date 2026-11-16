# Issue

**Title:** Refactored to using HashMap while parsing #81

## Description

@DocKDE 
Here I refactored the PDB parsing to use `HashMap`s internally which are turned into the appropriate collection after parsing. The major problem is that `HashMap`s do not retain ordering so I had to add `PDB::full_sort` in the parsing routine to keep all tests running. Potentially this could be solved by using `IndexMap`. I am very interested in your view on this approach.

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `358fb7b0e0f0`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.