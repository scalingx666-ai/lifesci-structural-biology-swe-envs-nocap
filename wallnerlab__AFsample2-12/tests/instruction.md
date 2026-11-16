# Issue

**Title:** Added functionality to provide single MSA file as input (.a3m format)…

## Description

Addressing issue 

Added functionality (`--msa-file`) to provide single MSA file as input (.a3m format). Will ignore/won"t-check any database paths provided in flagfile. Also `--use_precomputed_features` for using pickle files as feature inputs will also ignore any databases. 

NOTE: Database paths can't be empty in the flag-file (replace db paths with None) while using `--msa-file` or `--use_precomputed_features` flags.

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `b706fcbed199`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.