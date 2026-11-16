# Issue

**Title:** Update versioneer.py

## Description

Since python 3.12, SafeConfigParser and parser.readfp are deprecated. Need to change to the following: SafeConfigParser = ConfigParser and readfp = read_file

## Description
versioneer needed to be updated to stay consistent with python >= 3.12.

## Todos
Notable points that this PR has either accomplished or will accomplish.
```
    # had to modify as python 3.12 no longer accepts SafeConfigParser
    # parser = configparser.SafeConfigParser()
    parser = configparser.ConfigParser()
    with open(setup_cfg, "r") as f:
        # modfiy to update for python 3.12
        parser.read_file(f)
        # parser.readfp(f)
```

## Questions
- [ ] Question1

## Status
- [ ] Ready to go

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `184420964665`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.