# Issue

**Title:** 72 lack of solvents for packmol tool

## Description

Basically what ive said in the issue #72. Added two solvents in files for future use. 
Additionally, it improved the path_Registy initialization. As of now, it checks if there are already files downloaded.

Finally, I had to solve some Packmol bugs: Packmol needed the files in the root directory. My solution was to temporarily copy the registry files to the root directory. Once the tool is finished, it gets deleted. 

To test the packmol tool (and nothing else), this was my prompt:
"Make a solvated box with protein 1A3N and 1000 water molecules using the packmol tool." You can reduce it to 100 or 10 to make it run faster (couple seconds)

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `a56cfe860267`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.