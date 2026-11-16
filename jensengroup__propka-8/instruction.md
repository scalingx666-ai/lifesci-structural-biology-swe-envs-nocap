# Issue

**Title:** improved integration of PROPKA into Python scripts

## Description

The two commits add the capability to run a PROPKA calculation from another Python script. At the moment the support is rudimentary in that one simply supplies the commandline options as a list to the new function `run.single()`:

``` python
import propka.run
mol = propka.run.single("protein.pdb", optargs=["--mutation=N25R/N181D", "-v", "--pH=7.2"])
```

Additionally, small changes were made so that instead of files, any kind of Python streams can be used. This improves the way PROPKA can be integrated into workflows whereby other code writes PDB structures to a StringIO object instead of to disk, and PROPKA reads its input from this memory buffer.

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `6e1b0365e0e3`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.