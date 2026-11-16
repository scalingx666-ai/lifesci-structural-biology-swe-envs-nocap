# Issue

**Title:** Let the client handle IOErrors in PLIPXML constructors

## Description

It would be nice to be able to handle IOErrors myself when loading files with `plip.plipxml.PLIPXML`. _Throw early, Catch late._

The current behavior of the PLIPXML constructor is to catch the IO error, print an error message and issue a `sys.exit()`. This stops the server abruptly.

This effectively prevents me from doing anything with this error, such as run `plipcmd` to generate the report, or display a "No data available" message to the user. In addition I cannot imaging what would happen on the production server.

This pull request simply strips the try-except logic from the library in order to let the client handle this case. Depending on your local usage this may need some rewriting of the code outside of the PLIP module.

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `91802039d5c5`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.