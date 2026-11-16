# Issue

**Title:** change the definition of target name

## Description

change the definition of target name, which will directly depends on fasta file. It will be more convenient for user. 
Old version:
`fasta_path=foo/bar/abcd.fasta`
fasta_name will be `bar`

New version:
`fasta_path=foo/bar/abcd.fasta`
fasta_name will be `abcd`

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `b81d59db5ae2`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.