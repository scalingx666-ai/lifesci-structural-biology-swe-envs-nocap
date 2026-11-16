# Issue

**Title:** Small fix for prep_mmseqs_dbs.

## Description

Hello!

I ran into an issue when following the README instructions.

Because `download_mm_seqs_dbs.sh` downloads and unzips its target file (`uniref30_2103.tar.gz`) instead of leaving it as `.tar.gz`, `prep_mmseqs_dbs.sh` mistakenly does not process this file. At least, I guess that this is not intended behavior. This commit expands the glob used in the script to match \*.tar\* files and thus process `uniref30_2103.tar` correctly.

This commit is somewhat in response to #202.

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `94e0a4736b77`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.