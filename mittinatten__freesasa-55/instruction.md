# Issue

**Title:** CIF: --separate-chains --separate-models implementations

## Description

I got both `--separate-chains` and  `--separate-models` working. I have tested it with a handful of PDBs so far. I essentially used your implementation for the pdb format (from structure.c) as my outline. 

What has not yet been implemented yet is the n_chain_groups condition (lines 306 - 325). I refactored this code block a bit but I do not have a cpp/cif version for `freesias_structure_get_chains`. 

I am unable to get the linker to find `int freesasa_warn(const char *format, ...)` from the util.c file. I am linking with libfreesasa.a so I do not know what is going on here. I even put the declaration in cif.hh. (I try using it in cif.cc line: 253)

My implementations clearly do not test all the possible edge cases and misallocation of memory  like your original source code does. Mainly because I have never really thought about that stuff so I would like for you to take lead on these details.  I want to get this from dev to production ready and learn from you as we do it.

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `d1fd5a397823`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.