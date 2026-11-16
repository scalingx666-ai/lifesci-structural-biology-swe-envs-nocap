# Issue

**Title:** fix fasta multimer input in CLI

## Description

I am not 100% sure that this is a bug in `batch.py`. I _think_ the intent was to be able to model multimers with `.fasta` files formated like

```
>interesting_dimer
SEQUENCEA:SEQUENCEB
```

If this is the case, it was broken for dimeric complexes, but this pr should fix it. This has led to some confusion ( for instance).

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `87463cbcab7e`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.