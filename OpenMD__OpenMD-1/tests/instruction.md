# Issue

**Title:** Adding openmd spec file

## Description

- Spec file is needed to create rpm for RedHat/Centos/Fedora/Suse type
  Linux distribution
- Spec file is generated from version name
- Spec file was tested on el6, el7, fc20, fc21

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `eab513a3a305`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.