# Issue

**Title:** Detect embedded LR modules for pre-metadata artifacts

## Description

(reopened case).

The diagnostic on the unreleased development solvation artifact showed `metadata = None` and `lr = False`: the artifact carries an embedded D3TS module in its model tree but no metadata dict and no `cutoff_lr` attribute — the only two signals LR detection consulted. With `lr` False, the #119 fallback (which lives inside the LR-setup path) never executes, so the flattened-path `KeyError: nbmat_lr` persisted.

**Fix:** when metadata is `None`, fall back to module-tree inspection (the existing `has_lrcoulomb`/`has_d3ts`/`has_externalizable_dftd3` detectors) in three places: the constructor's `has_embedded_lr` determination, `_has_embedded_dispersion`, and `_has_embedded_coulomb`. A metadata-less embedded-D3TS model now gets `lr=True`, the D3 default cutoff, and the shared LR neighbor list — identical setup to a flag-carrying artifact. Metadata remains authoritative when present; scripted legacy models are unaffected (their metadata is always synthesized).

**Verification:** new regression test constructs a calculator from a raw model with a `d3ts` submodule and no `_metadata`, asserting detection, `cutoff_lr`, neighbor-list construction, and `nbmat_lr`/`nbmat_dftd3` delivery through `make_nbmat` (RED before the fix). Calculator/model/registry suites: 161 passed. `make check` clean.

@-maintainers note: the failing artifact isn't available on the CI box, so a confirmation run of the original saddleforge reproducer against this branch would be the final word.

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `88caa4809822`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.