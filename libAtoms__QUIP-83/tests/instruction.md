# Issue

**Title:** Improve NetCDF library config and linking

## Description

`make config` has been modified to ask for the compilation
and linking flags for NetCDF. It will default to the flags
returned from either `pkg-config` or `nc-config`, but allows
and flags to be entered freeform, so should work for any
installation (previously it assmued library names, tried to
read files that may not exist and and linked many unnecessary
libraries).

Also drops support for NetCDF3 (NetCDF4 can read/write version
3 files anyway).

Since flag is changed to `HAVE_NETCDF4`, `make config` can be
re-run without having to delete the previous `Makefile.inc`
(but will default to no NetCDF if `make config` is not re-run).

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `6e51af183b00`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.