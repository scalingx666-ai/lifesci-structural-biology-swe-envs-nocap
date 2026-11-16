# Issue

**Title:** Fix multisequence merge and inverse-fold resume identities

## Description

`boltzgen merge` now discovers backbone files independently of inverse-folded sequence IDs, and inverse-fold `--reuse` matches every expected CIF/NPZ pair with the writer's exact suffix and padding. Distinct runs with colliding normalized names get unique prefixes; repeated source paths are included once.

Preserve dotted and numeric-looking IDs, modern/legacy metadata and native companions, custom molecule definitions, sequence tables and score provenance. Merged files are independent copies so later prediction writes cannot change a source run. Replacements use canonical companion filenames and remove absent optional companions, preventing new coordinates from retaining old metadata, native files or refolds. Ambiguous legacy ownership is rejected before another design's metadata can be borrowed.

Ordinary runs of the same SMILES ligand can merge despite different generated reference conformers. Ordered chemistry, atom properties and stereochemistry must still agree; retain the first current source's reference definition. Empty metrics tables and incompatible molecule definitions fail explicitly. Numerical reference-feature parity across the original runs is not promised.

For partial inverse-fold retries, preserve completed sibling pairs so their cached downstream results still match. Reject complete indexed aliases with incompatible numeric padding before they become duplicate analyzed designs. This is not a general migration between output configurations; `docs/merge-resume.md` describes the supported resume contract and limits.

 and supersedes the overlapping changes proposed in #271. Thanks to @amduffy for the original report, @buerbaumer for the diagnosis, and @fnachon for the merge/resume repair proposed in #271. This replacement independently verifies and extends that work.

Validation at `6f4d279`: 592 CPU tests passed, 18 skipped for optional model dependencies/assets. The 60 new regressions cover real writer/dataset reuse, merge metadata, IDs, source isolation, molecule identity, errors and provenance. Confirmed failures were reproduced before correction. No GPU/model inference was run.

Deep review completed at `6f4d279` by five independent sessions: Astra, Luna, Terra, Sol and actual Claude Code Opus 5.5, all requested at xhigh effort. Confirmed findings were fixed and consequential changes rechecked. No confirmed in-scope finding remains. Merge remains nontransactional across the whole command; the documented output-history and conformer-parity limits still apply.

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `b587f77979c9`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.