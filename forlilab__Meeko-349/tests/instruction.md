# Issue

**Title:** add icode to BEGIN_RES

## Description

. Tested with Vina: with a flexible sidechain that has an icode:
```
mk_prepare_receptor.py -i test/polymer_data/1igy_B_82-83_has-icode.pdb -o receptor -f B:82A -p -j
```
And tested the export code path that creates PDB with docked flexible sidechain positions:
```
mk_export.py vina_docked.pdbqt -j receptor.json -s ligand_docked.sdf -p protein_docked.pdb
```
@rwxayheee could you do the same with AD-GPU?

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `a7fa6a6e8e63`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.