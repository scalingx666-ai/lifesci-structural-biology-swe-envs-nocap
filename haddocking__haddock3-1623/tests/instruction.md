# Issue

**Title:** Added an option to select models based on a reverse ranking

## Description

## What does this PR do and why?

Until now the assumptions as that the best models would have the lowest scores, with a default ascending sorting when ranking them. Some scoring function might have a different behaviour (e.g. higher is better).
This PR implements the option to rank/select models in reverse order.
An option was added to both `seletop` and `seletopclust` to rank models/clusters in reverse (descending) order meaning in from high to low scores. The default behavior remain unchanged (ascending order, from low to high scores).

### Single structure selection ###
- Added the `sort_ascending` parameter: `true` (default) selects best-scoring clusters first; `false` reverses the order (highest average score first). 
- 
### Score-based cluster selection ### 
- Added the `sort_ascending` parameter: `true` (default) selects best-scoring clusters first; `false` reverses the order (highest average score first). The reverse option applies **only** to the score-based ranking, not to size-based ordering.
- `rank_clust_order` now ranks clusters by their **average score** (computed over each cluster's best-scoring models via the shared `libclust.rank_clusters` helper), instead of just sorting the original cluster-rank keys coming from the clustering module.
- Added `cluster_score_threshold` (default 4): number of best-scoring models per cluster used to compute the cluster's average score. Replaces a previously hard-coded value.
- Exported cluster PDB files are now named following the **average-score ranking**: `cluster_1_model_1.pdb` corresponds to the best-scoring cluster (in ascending or descending order).  The export loop renumbers `clt_rank` by its position in the computed ranking.


## How was this tested?

Tested by running a test workflow from the docking-protein-protein example, adding `sort_ascending=false` to the `seletop`, `seletopclust` and `caprieval` stages and manually control that the ranking is indeed reverted.

Integration test for `seletopclust` adapted for the new option and new test added for `seletop`.
All tests passing.


## AI assistance

AI was used to sort out some error in the `seletopclust` implementation and in updating the tests.


## Checklist

- [X] Tests cover the new and/or changed code
- [ ] Documentation updated if needed (also in the [haddock3 user-manual](https://github.com/haddocking/haddock3-user-manual)
- [X] `CHANGELOG.md` updated for user-facing changes

## Related issues

#1620

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `7ad1148493fc`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.