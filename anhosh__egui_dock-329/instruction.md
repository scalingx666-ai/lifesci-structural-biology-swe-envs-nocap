# Issue

**Title:** AI usage policy

## Description

With the recent wave of new AI-assisted and even fully vibe-coded contributions, I decided to codify the rules for AI usage in this project. This is to protect myself from potentially having to sift through heaps of slop code and communication submitted by bad actors, as well as to protect the project from low quality code.

This PR will include the integration of [vouch](https://github.com/mitchellh/vouch) which will let me block any bad actors who misuse AI to produce low-quality contributions.

All users who have thus far given good contributions to the project have already been vouched.

For clarity: I am not going to ban all AI usage altogether. First of all, I can't stop anyone from using AI assistance; second - I think that in the right hands, AI can be used to write good code, as long as the AI driver is competent and understands every single line of code they submit. Please read the attached AI_POLICY.md for more details.

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `f52de2d04616`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.