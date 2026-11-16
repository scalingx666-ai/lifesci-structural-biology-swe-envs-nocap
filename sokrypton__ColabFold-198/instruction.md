# Issue

**Title:** fixed a bug for pair_mode==unpaired

## Description

It will resolve issues #191 and #181
I am not completely sure about which one would be the solution either this PR or
```python
                if is_complex and (paired_msa is not None):
                    all_seq_features = build_multimer_feature(
                        paired_msa[sequence_index]
                    )
                    feature_dict.update(all_seq_features)
```
When I tested this PR on Colab, it worked fine though.

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `0a7b11137dda`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.