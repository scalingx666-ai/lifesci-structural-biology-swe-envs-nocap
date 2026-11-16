# Issue

**Title:** add help print to mk_prepare_receptor

## Description

Adds help message for users who are used to `-o` flag in mk_prepare_receptor in older versions. Before v0.6.0, `-o` sets the PDBQT output filename, but in v0.6.0, it sets a default output basename that `--write` options rely on.

If someone runs `-o output.pdbqt -j`, the `-j` flag triggers writing a file named "output.pdbqt.json", but no PDBQT files are written. The added help message, shown below, is printed if the output basename ends with ".pdbqt" and `--write_pdbqt` was not used.

```
PDBQT files were NOT written. Use -p/--write_pdbqt for that.
Note that -o/--output_basename just sets a default for --write flags
```

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `1945f219bd4e`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.