# Issue

**Title:** Initiated integration of ColabFold-AF3 pipeline. Draft state of AF3 json input generation.

## Description

## Major
### batch.py / search.py
- Added argument group to handle specific arguments for AF3. 
   - `--af3-json` to specify AF3 json generation.
- Added functions (batch.py)
   - `generate_af3_input` processes fasta and a3m files and produce json files if specified `--af3-json`. (This will not proceed with structure inference.)

### input.py
- Added functions
   - `classify_molecules` handles fasta files containing complex with non-protein molecules

### utils.py
- Added class `AF3Utils` to fill out elements in json file.
   > This code was adopted from [Yoshi's code](https://github.com/cddlab/alphafold3_tools/blob/main/alphafold3tools/msatojson.py). It generates json inputs from given a3m file / directgory contains a3m files. 
- Added class `MolType` to handle different molecule types

## Progress
- [x] Convert fasta/msa to json
   - [x] colabfold_batch
   - [x] colabfold_search
- [x] Support FASTA file with multiple molecule types
   - [x] single fasta file per complex
   - [x] directory with multiple fasta files
- [ ] Support template
- [x] Support unpairedMsaPath and pairedMsaPath
- [ ] Test pipeline to validate json file
   (each molecule types, msa-pairing, template, custom ccd, RNA MSA, modifications, etc.)
- [ ] Validation
    - molecule types
       - [x] single protein, protein complex, protein+ligand
       - [ ]  protein+RNA, protein+DNA, RNA, DNA, ligand
     - msa-pairing
       - [x] UnpairedMSA/PairedMSA
       - [ ] dependency on --pair-mode
       - [x] specify with path to MSA file

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `8c55fc254882`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.