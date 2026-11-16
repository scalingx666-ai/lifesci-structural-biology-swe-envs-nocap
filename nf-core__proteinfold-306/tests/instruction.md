# Issue

**Title:** Common metric extraction [pLDDT, MSA, PAE]: extract_ouput.py -> extract_metrics.py in every program module

## Description

Moving towards having a single point of metric extraction that uses `BioPython` for structures etc. Extracting from fixed-width .pdb files causes issues (#226, #251).

The idea is that all programs actually produce the same set of metrics:
-  PDB/mmCIF structures (**pdb**)
- Per-residue confidence score (**plddt**)
- Multiple Sequence Alignment (**msa**)
- Inter-residue positioning Pair Alignment Error (**pae**)

These are stored in different ways be each program, which I've collated in other Issues MSA: (#265), PAE: (#262).

The idea is `extract_metrics.py` sits immediately after the AI protein structure prediction in `/modules/local/run_[program]/main.nf` and dumps all these metrics (if available) as `${meta.id}_[metric].tsv` in the directory of execution.  If some metric _may_ not be available it is an `optional: true` emit:. Happy to have another opinionated approach

This means `generate_report.py` can be largely indifferent to source program, giving consistent pipelines _etc_.

**Not included in current PR** 
- Using the newly emitted metrics in downstream pipelines. Workflow comp ability will be solve in a future
- ColabFold to use `extract_metrics.py` -- Currently it passes on ColabFold's figures, but I have an implementation of raw metrics in my dev branch
- Boltz to use `extract_metrics.py` -- This is fresh inclusion and the `.npz` files are passed through, rather than having `emit: [metric]` pass through raw data 

**Future benefits**
- PAE data is now available
- Boltz includes PAE files  with [--write_full_pae --output_format pdb](https://github.com/jwohlwend/boltz/blob/main/docs/prediction.md) options
- Report can be altered to include PAE data necessary to assess scientific quality (#303)
- A more general and simple MultiQC/proteinfold module can create a 'bulk' report from globbing all the raw `[metric].tsv` files

**Future renames**
- Since currently only plddt is used for mqc, I've populated `emit: multiqc` with the `${meta.id}_plddt.tsv`
- I'd like to call it `emit: plddt` and have a `multiqc` values downstream
- Simplify `ch_report_input` to pass raw data into `generate_report.py`

## PR checklist

- [X] This comment contains a description of changes (with reason).
- [x] Make sure your code lints (`nf-core lint`).
- [x] Ensure the test suite passes (`nextflow run . -profile test,docker --outdir <OUTDIR>`).
- [x] Check for unexpected warnings in debug mode (`nextflow run . -profile debug,test,docker --outdir <OUTDIR>`).
- [x] Output Documentation in `docs/output.md` is updated.
- [x] `CHANGELOG.md` is updated.

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `e9413bcc797f`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.