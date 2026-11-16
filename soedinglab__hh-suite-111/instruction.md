# Issue

**Title:** Perl 5.26.1: The use of "defined" on arrays no longer supported

## Description

At least in Perl v5.26.1 (default on Ubuntu 18.04), the use of `defined @array` produces fatal error, and so `modeller.pm` can not run. There does not seem to be any instances of this construction in other files.

It seems that use of `default` on arrays [is no longer supported](https://perldoc.perl.org/functions/defined.html#defined-EXPR) and has been [deprecated since Perl 5.6.1 release in early 2000s](https://perldoc.perl.org/perl561delta.html#Summary-of-changes-between-5.6.0-and-5.6.1).

Unless there is any need to support such old systems, I think it's safe to apply this patch.

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `70c28a3e4a5f`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.