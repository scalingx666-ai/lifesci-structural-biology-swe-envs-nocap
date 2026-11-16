# Issue

**Title:** Fix handling of CLI arguments in a3m utils

## Description

Hi!

It seems there are several minor issues when handling argument parsing for a3m_* utilities.

- The flags checking that the specific command line argument was passed are not properly initialized. While unlikely to cause anything (unless you happen to have files named `.ffdata` and `.ffindex`), this produce some inconsistency in output:

```
$ a3m_reduce -o /tmp/reduced_db  # Current behavior. No clear indication that required parameter is missing. 
ERROR: Could not open ffindex sequence data file! (.ffdata)!
$ a3m_reduce -o /tmp/reduced_db # Expected behavior
USAGE: a3m_reduce -i [inputfile|stdin] -o [outputfile|stdout] -d [ffindex_sequence_database_prefix]
```

- The value of `optarg` is assigned to a boolean variable. As far as I can tell, `optarg` is guaranteed to be non-NULL since the argument is marked are required in `getopt` string, so the boolean is set to true anyway, but I think this is a very convoluted way to do it.

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `3520d33764f2`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.