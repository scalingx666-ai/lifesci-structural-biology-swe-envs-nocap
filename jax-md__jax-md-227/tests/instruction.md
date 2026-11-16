# Issue

**Title:** Paircorr update

## Description

This PR makes two small additions to the pair correlation functionality

1. Slightly improves the documentation for `quantity.pair_correlation` and `quantity.pair_correlation_neighbor_list`
2. Adds a function `quantity.average_pair_correlation_results` that takes the results of the two pair correlation functions and averages over particles of the same species. When not using species, this is simply `jnp.mean(results, axis=0)`, but for species you typically want averages of the form $g_{AB}(r)$ for all pairs of species $A$ and $B$. This function pulls out all these averages. 

Thoughts/suggestions?

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `85981261fa9a`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.