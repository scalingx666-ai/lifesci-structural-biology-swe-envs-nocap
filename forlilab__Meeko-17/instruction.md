# Issue

**Title:** fix free_energies not parsed in ADGPU run

## Description

From ADGPU output, REMARK does not appear at te beginning of the line and it startswith USER keyword instead. This makes the scores not parsed correctly.

```
    FINAL DOCKED STATE:
    ________________________


Run:   4 / 20
Time taken for this run:   3.293s

DOCKED: MODEL        4
DOCKED: USER    Run = 4
DOCKED: USER
DOCKED: USER    Estimated Free Energy of Binding    =  +1.03 kcal/mol  [=(1)+(2)+(3)-(4)]
DOCKED: USER
DOCKED: USER    (1) Final Intermolecular Energy     =  -9.41 kcal/mol
```

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `c1b629011628`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.