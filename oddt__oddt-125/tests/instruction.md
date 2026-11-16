# Issue

**Title:** Move definition of namedtuple 'PLEC_bit_info_record' outside function…

## Description

… to avoid 'attribute lookup failed' error when pickling.

See for instance [this StackOverflow thread](https://stackoverflow.com/questions/16377215/how-to-pickle-a-namedtuple-instance-correctly).
Such a pickling error can also occur when using multiprocessing.

@mwojcikowski

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `70dea86b252f`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.