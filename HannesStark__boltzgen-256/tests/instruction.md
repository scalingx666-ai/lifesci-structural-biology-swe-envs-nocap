# Issue

**Title:** Fix visited-set shape in paired MSA construction

## Description

`taxonomy_map` is `[(taxon, [(chain_id, seq_idx), ...]), ...]`, but `visited = {(c, s) for c, items in taxonomy_map for s in items}` bound `c=taxon` and `s=(chain_id, seq_idx)` (the whole tuple), so `visited` ended up containing `(taxon, (chain_id, seq_idx))` entries instead of `(chain_id, seq_idx)` entries. The later `(c, i) not in visited` check (building `available[c]`) can then never match, so sequences already consumed by taxonomy-based pairing aren't excluded from the pool of "available" filler sequences and can be reused.

Found this by comparing against a fix for the equivalent bug in [fnachon/boltz](https://github.com/fnachon/boltz) (a fork of jwohlwend/boltz, which boltzgen's MSA featurization code is derived from).

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `a3149cf18eeb`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.