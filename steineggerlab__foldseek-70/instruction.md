# Issue

**Title:** Added PDB update pipeline

## Description

I checked that this script runs successfully (uploaded pdb100.tar.gz to Cloudflare yesterday 11:03pm).
It is currently scheduled as a monthly cron job on _hulk_ server.

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `9bb889a9bcb8`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.