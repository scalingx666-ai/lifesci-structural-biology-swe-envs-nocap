# Issue

**Title:** A basic Dockerfile for running Genie 2 in a Docker container

## Description

The included Dockerfile uses a `pytorch:2.3.0-cuda12.1-cudnn8-runtime` base image and includes logic for the installation of the Genie 2 requirements. It also pulls the base checkpoint from `git lfs` (though it appears that the aqlboratory account is over its LFS quota).

The goal of this image is to make it easier for users to use Genie 2 without needing to install anything, which is perfect for scaling sequence/structure generation in high-performance computing environments.

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `ecd0d5450781`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.