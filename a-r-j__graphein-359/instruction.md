# Issue

**Title:** eliminate FutureWarning about Pandas

## Description

#### What does this implement/fix? Explain your changes
In Pandas 1.2.0 and later, The default value of regex for [Series.str.replace()](https://pandas.pydata.org/docs/reference/api/pandas.Series.str.replace.html#pandas.Series.str.replace) will change from True to False. So we need  use regular expressions explicitly now, otherwise a warning`FutureWarning: The default value of regex will change from True to False in a 
future version` will occur.

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `7ce0fd95427c`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.