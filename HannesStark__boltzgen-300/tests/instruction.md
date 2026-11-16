# Issue

**Title:** Fix file-chain leaving atoms and missing bond-chain errors

## Description

Leaving-atom constraints on file-loaded chains incorrectly required an inline ParsedChain entry. Use the existing file-residue lookup when no sampled inline map exists. Missing bond-chain validation now recognizes file chains and actually raises its contextual ValueError.

Thanks to @ayshaw (#24), @yx0516 (#95), and @Misaka-kaminari (#177). The original file-bond KeyError in #95 was already fixed by 7358f4f; this adds regression coverage and corrects the adjacent error/leaving-atom paths.

Validation: 12 regression cases cover cropped file chains, preceding chains, bond/no-bond inputs, source-context omissions and either missing endpoint. Related parser/transform tests and the existing sampled-inline leaving-atom case pass.

Scope: use distinct source chain IDs or explicit final renamed IDs. The pre-existing ambiguous duplicate-ID leaving-atom lookup is not resolved. The broader noncovalent-distance request in #177 remains open.

.
.

Shared verification: four independent reviewers checked the combined changes. All 62 new regression cases pass on Python 3.11/Torch 2.7.1 and Python 3.12/Torch 2.15.0. The broader CPU suite has 863 passed, 17 skipped and the same seven pre-existing CSV identifier failures as baseline; it is not fully green. No GPU model-quality claim is made.

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `e582516193de`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.