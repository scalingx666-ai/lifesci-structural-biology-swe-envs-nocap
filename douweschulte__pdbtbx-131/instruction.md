# Issue

**Title:** Add a Nucleic Acid-Containing PDB to the test suite.

## Description

```shell
cargo test -p pdbtbx run_pdbs -- --nocapture
```

```txt
Working on file: /Users/zcpowers/Documents/Projects/pdbtbx/example-pdbs/1BC8.pdb
LooseWarning: SEQRES inconsistent residues
    ╷
342 │ SEQRES   1 A   10   DT  DA  DC  DC  DG  DG  DA  DA  DG  DT
    ·                    ─── ─── ─── ─── ─── ─── ─── ─── ─── ───
    ╰SEQRES definition
  ╷
1 │  DA DA DC DT DT DC DC DG DG DT
  ╰Residues found in ATOM definitions
The residues as defined in the SEQRES records do not match with the found residues, see above for details.

LooseWarning: SEQRES inconsistent residues
    ╷
342 │ SEQRES   1 A   10   DT  DA  DC  DC  DG  DG  DA  DA  DG  DT
    ·                    ─── ─── ─── ─── ─── ─── ─── ─── ─── ───
    ╰SEQRES definition
  ╷
1 │  DT DA DC DC DG DG DA DA DG DT
  ╰Residues found in ATOM definitions
The residues as defined in the SEQRES records do not match with the found residues, see above for details.

Found 1356 atoms, in 275 residues, in 3 chains, in 1 models it all took 2 ms
PDB parsed
Set values
Counted for averages
Found averages
Average B factor: Total: 16.988, Backbone: 15.760, Sidechains: 17.452
```

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `9691575ab531`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.