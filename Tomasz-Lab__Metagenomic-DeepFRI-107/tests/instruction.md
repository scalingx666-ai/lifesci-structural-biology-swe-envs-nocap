# Issue

**Title:** go-term propagation

## Description

Solves issue #104. 

This feature added a flag to optionally propagate go-terms (add parent terms) to main mdF results tsv. Including this flag creates a results_propagated.tsv next to the original results.tsv that includes additional rows from propagated go-terms and a new column with information whether the term is propagated (True/False). 

- By default the propagation uses "is_a" and "part_of" relationships
- The parent score is the max score among children terms. 
- The go.obo graph file (explaining the parent-child relationships) is automatically downloaded when the flag is used (can be provided with --obo-path). 
- networkx and obonet are new libraries introduced to handle propagation along the graph. 
- root terms (BP, MF, CC) are excluded. 

An example of a propagated result:
> protein	network_type	prediction_mode	go_term	score	go_name	aligned	target_id	db_name	query_identity	query_coverage	target_coverage	propagated
> AF-A0A009JQK7-F1-model_v4	cnn	GO Biological Process	GO:0034654	0.2037	nucleobase-containing compound biosynthetic process	False	nan	nan	nan	nan	nan	False
> AF-A0A009JQK7-F1-model_v4	cnn	GO Biological Process	GO:0006139	0.2037	nucleobase-containing compound metabolic process	False	nan	nan	nan	nan	nan	True
> AF-A0A009JQK7-F1-model_v4	cnn	GO Biological Process	GO:0008152	0.2037	metabolic process	False	nan	nan	nan	nan	nan	True
> AF-A0A009JQK7-F1-model_v4	cnn	GO Biological Process	GO:0009058	0.2037	biosynthetic process	False	nan	nan	nan	nan	nan	True
> AF-A0A009JQK7-F1-model_v4	cnn	GO Biological Process	GO:0009987	0.2037	cellular process	False	nan	nan	nan	nan	nan	True
> AF-A0A009JQK7-F1-model_v4	cnn	GO Biological Process	GO:0044238	0.2037	primary metabolic process	False	nan	nan	nan	nan	nan	True

The **nucleobase-containing compound biosynthetic process** (the first entry) is the original mdF prediction, and each line below it is a propagated parent term with inherited score and True in the 'propagated' column.

<img width="500" height="500" alt="image" src="https://github.com/user-attachments/assets/c9feb87a-93b0-4088-8b64-0ba549dd28a7" />


Also, fixed the bug that introduced a nonsense column to the results.tsv, that came from double tab in pipeline.py:

> fout.write(
>     f"{query_id}\t{net_type}\t{DEEPFRI_MODES[mode]}\t{term}\t{score:.4f}\t{go_name}\t"
>     f"\t{aligned}\t{target_id}\t{database}\t{target_identity}\t{query_cov}\t{target_cov}\n"
> )

Notice the tab at the end of the first fstring and another at the beginning of the second.

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `366acae69245`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.