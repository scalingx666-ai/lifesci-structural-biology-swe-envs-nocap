# Issue

**Title:** bring back tool retrieval

## Description

- Added back tool retrieval for the main dude
- Also improved how tools are retrieved to make it more robust and useful

@SamCox822 and @Jgmedina95 - look at agent.py and tell me what you think. Old version of tool retrieval looks awkward with agent initialized during 'run' function, so I made a separate function for agent initialization to make it look cleaner and readable.

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `8b61d6b27dac`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.