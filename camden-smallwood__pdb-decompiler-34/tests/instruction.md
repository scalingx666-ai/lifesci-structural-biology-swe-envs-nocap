# Issue

**Title:** handle BasePointerRelative symbols in decompile

## Description

i had a issue trying to use this project on a PDB, but Claude Fable did the following fix in order for it to finally work for the PDB I was using:

> the symbol name is now pushed into register_relative_names and a corresponding cpp::Statement::Variable is emitted using cpp::type_name (with declaration_name set to the symbol name). this ensures base-pointer-relative locals are discovered and declared during decompilation.

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `9ba334d54105`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.