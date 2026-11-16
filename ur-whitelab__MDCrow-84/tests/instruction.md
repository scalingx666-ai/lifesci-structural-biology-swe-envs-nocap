# Issue

**Title:** 80-adding-solvate-option-in-setupandrun-tool

## Description

As part of my action items from yesterday meeting.

Im adding the option to solvate the protein directly using modeller.addSolvent. This way, the agent can do a simulation directly without using packmol to just add water to the simulation.

The prompt for testing was:
""Simulate 1A3N in water at 280K. Dont forget to clean the protein first"

The second part is just to make it work quicker. The agent still needs the warning from the tools to then clean the file most of the time.

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `eaa4f17daa6b`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.