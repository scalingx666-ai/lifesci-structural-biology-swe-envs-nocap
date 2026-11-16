# Issue

**Title:** fix a3m + template

## Description

This PR seeks to fix the interaction between specifying templates while using an a3m. Natively this breaks when the a3m contains a multimeric protein. As an example, an a3m generated from the following fasta fails when using the --templates flag:
`> 1QYS_1_Chain A_TOP7_ComputationallyDesignedSequence
AQAQAQTG:DGTLAVPFKAQAQTG:LECYQCYGVPFETSCPSITCPYPDGVCVTQEAAVIVDSQTRKVKNNLCLPICPPNIESMEILGTKVNVKTSCCQEDLCNVAVP` 

The bug occurs because when using an a3m file as well as templates, template features are generated for only the concatenated sequence as opposed to the individual chains. This causes a mismatch in the `generate_input_feature` call as the length of `template_features` is 1 while `query_seqs_unique` will have length equal to the number of chains. 

This fix splits the concatenated sequence before retrieving template features.

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `7113dd58234f`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.