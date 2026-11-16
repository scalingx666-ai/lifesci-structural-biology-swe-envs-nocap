# Issue

**Title:** Replace mmCIF rsync FTP download with AWS CLI download from Amazon S3 PDB Snaphots

## Description

This PR contains:
- An additional requirement to have pip dependency manager installed for the MsaServer setup
- Changes that speed up the mmCIF database download, replacing the FTP server download via rsync with an S3 download of the mmcif snapshot from the [Registry of Open Data on AWS](https://registry.opendata.aws/pdb-3d-structural-biology-data) via the AWS CLI

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `0cf2621921f2`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.