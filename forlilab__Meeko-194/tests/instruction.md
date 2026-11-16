# Issue

**Title:** Beautify output of mk_prepare_receptor for some failures, rename allowed_altloc to default_altloc

## Description

Renamed `allowed_altloc` to `default_altloc`

When residues fail to match templates or altlocs needed to be specified, there's a prettier help message instead of the error traceback. For example:

```
Have alternate location ['A:371']
Either specify an altloc for each with option `wanted_altloc`
or a general default altloc with option `default_altloc`.

Creation of data structure for receptor failed.

Handle AltLocs with default_altloc or wanted_altloc

Use -a/--allow_bad_res to automatically remove residues
that do not match templates, and --default_altloc to set
a default altloc variant. Use these at your own risk.

Inspecting and fixing the input structure is recommended.
Use --wanted_altloc to set variants for specific residues.
```

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `89ba87496ae8`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.