# Issue

**Title:** fix: download command in Dockerfile

## Description

Hi, Thanks for the great work!

I found a small inconsistency in the `Dockerfile`:
https://github.com/HannesStark/boltzgen/blob/d4b8206974262ff6c72c7a7874283b3441f0aacd/Dockerfile#L46-L48

But in `src/boltzgen/cli/boltzgen.py`:
https://github.com/HannesStark/boltzgen/blob/d4b8206974262ff6c72c7a7874283b3441f0aacd/src/boltzgen/cli/boltzgen.py#L327-L346

And in `README.md`:
https://github.com/HannesStark/boltzgen/blob/d4b8206974262ff6c72c7a7874283b3441f0aacd/README.md?plain=1#L409-L412

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `d4b820697426`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.