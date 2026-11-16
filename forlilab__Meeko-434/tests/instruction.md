# Issue

**Title:** Feat: Add option to ignore https certificate for PDB download

## Description

Analogous to the option `--no-check-certificate` in wget, this PR adds the option `--ignore_https_cert` (default is False) to bypass https certificate checks for downloads from the PDB database as a last resort in systems with either misconfigured certificate providers or website misconfiguration.

This is a somewhat dangerous thing to do as spoofing of rcsb.org would not be detected, thus plenty of warning notes are included.

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `d8d392472710`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.