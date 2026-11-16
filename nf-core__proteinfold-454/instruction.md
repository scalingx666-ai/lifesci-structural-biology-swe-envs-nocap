# Issue

**Title:** Update publishdir patterns for alphafold2 modules

## Description

Addresses the AlphaFold2 component of #394 as a potential template for other modes. I do like the idea of more fine-grained control of outputs as proposed in #453 but maybe can wait until future release? Probably need some balance between amount of control and a large number of parameters.

Have tested with monomer and multimer in split_msa and standard modes.

I went with the following structure where publishing 'raw' intermediate data is gated by --keep_raw parameter (false by default).

```
output/alphafold2/
└── standard
    ├── test-dimer
    │   ├── paes [25 entries exceeds filelimit, not opening dir]
    │   ├── raw [182 entries exceeds filelimit, not opening dir]  <-- raw output data in here
    │   ├── test-dimer_alphafold2_msa.tsv
    │   ├── test-dimer_iptm.tsv
    │   ├── test-dimer_plddt.tsv
    │   └── test-dimer_ptm.tsv
    └── top_ranked_structures
        └── test-dimer.pdb
```

## PR checklist

- [x] This comment contains a description of changes (with reason).
- [x] Make sure your code lints (`nf-core lint`).
- [x] `CHANGELOG.md` is updated.

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `418de16ba88d`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.