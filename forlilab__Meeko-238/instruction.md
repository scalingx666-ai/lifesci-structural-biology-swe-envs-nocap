# Issue

**Title:** fix link to readthedocs, fix cli help msg

## Description

README links to readthedocs now work

as suggested in  help message for flexres option in mk_prepare_receptor.py now does not suggest that chain ID is optional, new message reads:
> leave chain ID empty if omitted in input PDB or mmCIF

old message was:
> skip chain ID if it is unspecified

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `c938ebdc347b`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.