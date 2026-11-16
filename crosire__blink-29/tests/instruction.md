# Issue

**Title:** Fixed some problems where object files could not be located

## Description

Thanks for sharing the blink project!

I tried to use the dll branch with our code base and found two issues: 
  1. When `read_debug_info` is called for multiple modules, the list of object files and the list of source files get out-of-sync; object files are correctly appended to the array, but source files overwrite existing entries.
  2. I encountered the case, that the object file paths are not absolute in the PDB file, I fixed this by looking at the current working directory in the code view records.

With these fixes blink is able to find all source and object files in our solution, which has multiple projects and a kind of unusual file structure.

This pull request also adds a little feature with lets you attach to a running executable by its name - instead of looking up the PID manually. I added the command line switch `-a` so that it does not interfere with the existing command line options.

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `d015a65d239a`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.