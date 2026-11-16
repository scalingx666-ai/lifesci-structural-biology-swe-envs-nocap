# Issue

**Title:** fix: correct usage of boost::filesystem::path::extension

## Description

This pull request includes a change to the `simulation_container` structure in the `unidock/src/main/simulation_container.h` file. The change simplifies the code by replacing a call to `boost::filesystem::extension` with a more straightforward method to get the file extension.

Code simplification:

* [`unidock/src/main/simulation_container.h`](diffhunk://#diff-5d50e9bfd107636df11dcbe5cf30f8db0f7f764651d0e5eaeb09692e7ffb1e51L330-R330): Replaced `boost::filesystem::extension` with `path().extension().string()` to determine the file extension of `m_ligand_config_paths[id].path()`.

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `caf3161b28f7`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.