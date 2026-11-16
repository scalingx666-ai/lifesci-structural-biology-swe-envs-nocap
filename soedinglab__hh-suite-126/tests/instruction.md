# Issue

**Title:** Read gzipped mmCIF files as input

## Description

On our cluster, PDB is available in gzipped mmCIF format for space saving reasons.

The current version of the cif2fasta.py script only handles uncompressed mmCIF files. If I want to get all the protein sequences in PDB, I'd have to uncompress everything to a temporary folder (resulting in ~200GB temp files I guess) and process that.

Instead this pull request implements functionality to read the .cif.gz files directly using the builtin gzip python module.

As a side effect I had to import print_function from __future__ to get the code to run due to a syntax error (now on line 713).  I am not sure what pdbx.reader should be used, mine is not compatible with Python 3. The import shouldn't have any impact on python 3 anyway.

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `9aa96cb13186`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.