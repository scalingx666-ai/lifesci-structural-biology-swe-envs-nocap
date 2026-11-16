# Issue

**Title:** Format string in output file with plain line-ending character instead of os.linesep

## Description

The issue only affects Windows PowerShell. In some files written by Meeko, each line has double the line-ending characters. This is likely because the Python built-in function `f.open()` by default translates '\r\n' (os.linesep on Windows) to '\r\r\n' when writing the file, which will be read as '\n\n' when the file is re-opened. 

https://docs.python.org/3/library/functions.html#open

> When writing output to the stream, if newline is None, any '\n' characters written are translated to the system default line separator, [os.linesep](https://docs.python.org/3/library/os.html#os.linesep). If newline is '' or '\n', no translation takes place. If newline is any of the other legal values, any '\n' characters written are translated to the given string. 

This PR replaces all eol by the plain line-ending character '\n'. Another possible solution is to always write without translation, i.e. f.open(newline='') but that isn't the default. Thanks to Nicole Benson (Fuchs lab, OSU) for bringing this to our attention.

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `efc78f5e2409`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.