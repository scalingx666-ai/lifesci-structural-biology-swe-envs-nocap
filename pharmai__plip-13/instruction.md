# Issue

**Title:** Always log to STDERR

## Description

Logging some messages to STDOUT is problematic when using `--stdout` or `-O` as the output and logging information become entangled

    plip -i 1vsn -xvO > output.xml

Now output.xml contains both the output and logs (except warning and errors which don't happen here). It would be much nicer to have the logging written to STDERR, even for debug and info messages.

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `91802039d5c5`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.