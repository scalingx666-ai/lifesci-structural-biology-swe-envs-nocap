# Issue

**Title:** Update boltz workflow to accept YAML as input

## Description

This PR adds support for **YAML-formatted inputs** to the pipeline when using `--mode boltz`. This feature enables users to define **covalent modifications** and **structural constraints**, expanding the scope of Boltz predictions from simple folding to **functionally modified protein design**. This update follows similar functionality as rosettafold and helixfold implementations for handling YAML files.

### Implementation Details `--mode boltz`

- The `--input` samplesheet can now contain `.yaml` files in addition to `.fasta`.
- The pipeline detects input format and branches accordingly:
  - `.yaml` files are passed directly to Boltz
  - `.fasta` files follow the standard preprocessing workflow (e.g., MSA generation, YAML conversion)
  
### Caveats
Currently, this implementation does not modify or validate YAML MSA contents. This means:
- If `--boltz_use_msa_server` is `false`, the YAML **must include a valid MSA block with a precomputed MSA**, otherwise the pipeline will fail
- If `--boltz_use_msa_server` is `true`, Boltz automatically calls an external API to generate the MSA.

### I tested and confirmed:
- A user can run the `proteinfold` pipeline from the command line using a YAML input with a precomputed MSA.
- Arbitrary covalent modifications or structural constraints can be specified in the YAML.
- The Boltz module will consume these modifications and produce structure predictions accordingly.


## PR checklist

- [X] This comment contains a description of changes (with reason).
- [X] Make sure your code lints (`nf-core lint`).
- [x] `CHANGELOG.md` is updated.

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `c5244506bd48`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.