# Issue

**Title:** Refactor database paths

## Description

Reorganises the reference database directory structure.
This improves maintainability, reduces redundancy, and makes it easier to ensure databases are up-to-date and correctly integrated.

Single directory option:
```
proteinfold_dbs/
├── bfd
├── colabfold_envdb
├── colabfold_uniref30
├── maxit-v11.200-prod-src
├── mgnify
├── params
├── pdb100
├── pdb70
├── pdb_mmcif
├── pdb_seqres
├── rfam
├── small_bfd
├── uniprot
├── uniref30
└── uniref90
```

Optionally users could use a module specific structure:
```
proteinfold_dbs/
├── alphafold2
│   ├── bfd -> ../shared/bfd
│   ├── mgnify -> ../shared/mgnify
│   ├── params
│   ├── pdb70
│   ├── pdb_mmcif -> ../shared/pdb_mmcif
│   ├── pdb_seqres -> ../shared/pdb_seqres
│   ├── small_bfd -> ../shared/small_bfd
│   ├── uniprot -> ../shared/uniprot
│   ├── uniref30 -> ../shared/uniref30
│   └── uniref90 -> ../shared/uniref90
├── boltz
│   └── params
├── colabfold
│   ├── colabfold_envdb
│   └── colabfold_uniref30
├── esmfold
│   ├── esm2_t36_3B_UR50D-contact-regression.pt
│   ├── esm2_t36_3B_UR50D.pt
│   └── esmfold_3B_v1.pt
├── helixfold3
│   ├── bfd -> ../shared/bfd
│   ├── params
│   ├── maxit-v11.200-prod-src
│   ├── mgnify -> ../shared/mgnify
│   ├── pdb_mmcif -> ../shared/pdb_mmcif
│   ├── pdb_seqres -> ../shared/pdb_seqres
│   ├── rfam
│   ├── small_bfd -> ../shared/small_bfd
│   ├── uniprot -> ../shared/uniprot
│   ├── uniref30 -> ../shared/uniref30
│   └── uniref90 -> ../shared/uniref90
├── rosettafold_all_atom
│   ├── bfd -> ../shared/bfd
│   ├── pdb100
│   ├── params
│   └── uniref30 -> ../shared/uniref30
└── shared
    ├── bfd
    ├── mgnify
    ├── pdb_mmcif
    ├── pdb_seqres
    ├── small_bfd
    ├── uniprot
    ├── uniref30
    └── uniref90
```

<!--
# nf-core/proteinfold pull request

Many thanks for contributing to nf-core/proteinfold!

Please fill in the appropriate checklist below (delete whatever is not relevant).
These are the most common things requested on pull requests (PRs).

Remember that PRs should be made against the dev branch, unless you're preparing a pipeline release.

Learn more about contributing: [CONTRIBUTING.md](https://github.com/nf-core/proteinfold/tree/master/.github/CONTRIBUTING.md)
-->

## PR checklist

- [x] This comment contains a description of changes (with reason).
- [x] Make sure your code lints (`nf-core lint`).
- [x] Ensure the test suite passes (`nextflow run . -profile test,docker --outdir <OUTDIR>`).
- [x] Check for unexpected warnings in debug mode (`nextflow run . -profile debug,test,docker --outdir <OUTDIR>`).
- [x] Usage Documentation in `docs/usage.md` is updated.
- [x] Output Documentation in `docs/output.md` is updated.
- [x] `CHANGELOG.md` is updated.
- [x] `README.md` is updated (including new tool citations and authors/contributors).

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `a69b49b23a40`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.