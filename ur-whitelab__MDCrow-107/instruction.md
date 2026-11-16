# Issue

**Title:** 94 making outlines prefilter

## Description

As described in the corresponding issue #93. Ive added a step to make structure and organize the user input into the prompt before it gets to the agent. 

Ive included a lot of "#PR comments" to make it easier for review :) 

Hre are some examples of how it works using only GPT-3.5-Turbo
```
agent.run("make a box of 0.1M of urea in water") 

Prompt: """        Approach the molecular dynamics inquiry by dissecting it into its modular
        components:
        Main Task: Simulate a box of 0.1M of urea in water
        Subtasks: Simulation, 
        Target Proteins: None
        Parameters: SaltConcentration: 0.1M, Solvate: True, 
        Initial Plan Proposed by User: None

        The Main Task is the user's request....."""
```
```
agent.run("Calculate the radius of gyration of 1A3N at 280K with water") 

prompt="""Approach the molecular dynamics inquiry by dissecting it into its modular
        components:
        Main Task: Calculate the radius of gyration of 1A3N at 280K with water
        Subtasks: Preprocessing, Simulation, Postanalysis, 
        Target Proteins: 1A3N, 
        Parameters: Temperature: 280K, Solvate: True, 
        Initial Plan Proposed by User: None

        The Main Task is the user's request...
...
..."""
```
```
agent.run("Calculate the Radial distribution function of 1A3N at 280K with water. Dont forget to preprocess the pdb file after downloading it") 
prompt="""
Approach the molecular dynamics inquiry by dissecting it into its modular
        components:
        Main Task: Calculate the Radial distribution function of 1A3N at 280K with water.
        Subtasks: Preprocessing, Simulation, Postanalysis, 
        Target Proteins: 1A3N, 
        Parameters: Temperature: 280K, Solvate: True, 
        Initial Plan Proposed by User: Download PDB file for 1A3N,Pre-process the PDB file,Calculate the Radial Distribution Function with water.,

        The Main Task is the user's ..."""
```
**Important:** Be sure to try it in a new environment, and install the dependencies from zero. As I had to fight a lot with dependencies conflicts and would like to see if the setup I came from creates other conflicts I haven't made aware yet.

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `d8fdc1bc8e5e`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.