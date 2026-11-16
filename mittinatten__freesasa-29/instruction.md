# Issue

**Title:** Fixes forced libxml dependency

## Description

Small fix to remove the libxml dependency when USE_XML is set to 0

We might consider also adding an

```
#ifndef USE_XML
```

as well.

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `aef643bbbaab`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.