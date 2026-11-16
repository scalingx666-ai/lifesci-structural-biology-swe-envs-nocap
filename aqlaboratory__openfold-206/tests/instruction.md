# Issue

**Title:** adding a script for threading a sequence onto a structure

## Description

In protein design a common task is to thread a sequence onto a template protein with no gaps and generate a full atom structure.  It turns out that AI models are an extremely time-efficient way to do this relative to other approaches. 

This PR implements this as a new script, called `thread_sequence.py`, which implements this type of threading. I wrote it as a separate script since it is a sufficiently different task from normal inference. In order to reduce code duplication, some of the functions used by both scripts were pushed into a new utility module. 

I also removed a bunch of code from the `__init__.py` files to resolve some odd import issues i was having.  The code in question shouldn't be necessary, if it's serving a specific purpose lemme know and i can figure out another approach.

Last, I'd really appreciate comments about the structure of this, I think there's probably a better way to organize it but im not seeing it right now

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `4b4105969461`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.