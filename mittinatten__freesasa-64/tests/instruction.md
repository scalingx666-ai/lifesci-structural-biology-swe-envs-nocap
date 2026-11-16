# Issue

**Title:** Allow forward declaration of freesasa_parameters

## Description

This allows `freesasa_parameters` to be forward declared in C++ programs. It is currently a `typedef` to an unnamed struct which cannot be forward declared as discussed at

https://stackoverflow.com/questions/10249548/forward-declaring-a-typedef-of-an-unnamed-struct

~The modification works for my purpose but I'm unable to run the tests as the `configure` script seems to be missing from the current main branch (mismatch with build instructions in the `README.md`). If you can direct me to how to build these I'm happy to do more testing.~ Downloading the latest release tar-ball with the configure script, I detected that `struct` needs to be inserted in all further instances of `freesasa_parameters`. Is this an acceptable solution, or could something else be done to remedy the issue?

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `fa1db6a7d364`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.