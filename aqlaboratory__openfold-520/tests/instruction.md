# Issue

**Title:** Fix RODA flatten script

## Description

When I ran `bash $OF_DIR/scripts/flatten_roda.sh alignment_data/alignment_dir_roda alignment_data/` as per the documentation, I got the following error:
```
syntax error in conditional expression: unexpected token ;'
../openfold/scripts/flatten_roda.sh: line 32: syntax error near ;'
../openfold/scripts/flatten_roda.sh: line 32:         elif [[ -z $(ls "${subdir}")]]; then
```

The line needs a space before the `]]` to work. 

I reworked the script to fix this and to make iterating over the files a bit more robust. Seems to work as expected now.

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `a1192c8d3a0f`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.