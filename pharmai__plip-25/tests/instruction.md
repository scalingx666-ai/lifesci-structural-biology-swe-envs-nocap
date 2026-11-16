# Issue

**Title:** Refactoring Proposal

## Description

Although this is no functional issue, one should avoid widely-spanned if-else clauses. For this reason, I optimized 
```python
if config.INTRA:
    # Many lines
else: 
    return pairings
```
to 
```python
if not config.INTRA:
    return pairings
# Many lines
```
so that the complexity is reduced.

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `e23f5f74395c`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.