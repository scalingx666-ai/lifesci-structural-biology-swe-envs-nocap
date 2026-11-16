# Issue

**Title:** Add info for June 2022 GDRs and Azure Connect Feature Pack

## Description

* GDR releases: https://msrc.microsoft.com/update-guide/vulnerability/CVE-2022-29143
* Azure Connect Feature Pack: https://support.microsoft.com/kb/5014242

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `52d73d40fd1f`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.