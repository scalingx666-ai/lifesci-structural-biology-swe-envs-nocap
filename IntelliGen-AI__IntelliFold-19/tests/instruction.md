# Issue

**Title:** fix(jax): gather the keys' ref_space_uid from the queries layout for IntelliFold-v2

## Description

## Problem
AlphaFold 3's atom cross-attention encoder gates the per-atom-pair reference-geometry features (offset, 1/(1+d²)) with a same-reference-space mask:

```python
offsets_valid = queries_ref_space_uid[:, :, None] == keys_ref_space_uid[:, None, :]
```

The keys' uid is gathered with `queries_to_keys` — whose indices address the flattened **queries** layout (`input_shape` = `(num_subsets, 32)`) — from the **token-atom** layout:

```python
keys_ref_space_uid = atom_layout.convert(
    batch.atom_cross_att.queries_to_keys,
    batch.ref_structure.ref_space_uid,        # (num_tokens, 24)
    layout_axes=(-2, -1))
```

Both flatten to the same size, so it runs. But the queries layout packs real atoms and the token-atom layout pads every token to 24 slots, so from the second token on each key reads another atom's uid, or padding. `keys_ref_pos` a few lines above takes the correct token → queries → keys path. `atom_layout.convert` rejects this exact call for numpy `GatherInfo` (`ValueError: Input array layout axes are incompatible`), but under jit `input_shape` is a JAX array and the check is skipped.

Measured on 9JIL (774 tokens, 5,888 atoms): only **904** of 753,664 query/key pairs are marked same-conformer, against **49,128** true intra-residue pairs, and the keys' uid is right for 0.01% of keys. Reported upstream as google-deepmind/alphafold3#730 (fix #733 and comment-only #740 are both open, with no maintainer response).

## Why IntelliFold-v2 needs the fix
- IntelliFold-v2 was trained with per-pair semantics, the same as this repo's PyTorch model (`intellifold/openfold/model/diffusion.py:906-914` builds the mask from one per-atom uid array). Running its weights through the upstream line is therefore a train/inference mismatch.
- Measured with a training-loss probe (IntelliFold-v2 training forward, 24 batches, identical RNG, only the gather switched): the upstream gather gives a higher training loss on **16/24** batches for the base IntelliFold-v2 weights and **20/24** for a fine-tuned checkpoint (t = +2.6). The effect is small (~0.2–0.4% of the loss) but systematic.
- Stock AF3 weights were trained with the upstream line and must keep it, so the fix is a config flag, not a global change.

## Change
- `AtomCrossAttEncoderConfig.keys_ref_space_uid_from_queries: bool = False`. The default keeps AF3's behaviour, which stock `af3.bin` needs.
- `_keys_ref_space_uid()` helper that picks the source layout.
- `_FULLFAT_OVERRIDES` turns it on for **both** atom encoders (trunk conditioning `evoformer.per_atom_conditioning`, and `heads.diffusion`). So it's on for `--full-fat` (the default, IntelliFold-v2) and off for `--no-full-fat` (stock AF3). `_set_dotted` fails loudly if either path drifts.
- Apache-2.0 §4(b) modification notice in the file header. `NOTICE` now lists the modified `third_party/alphafold3` files, including the existing diffusion-steering change in `diffusion_head.py`, which the previous "verbatim copy … no other files were changed" wording did not cover.
- `tests/test_keys_ref_space_uid.py`.

## Verification
**Tests:** 4 passed, against this branch's code in the IntelliFold JAX env on H200. They cover:
- the queries-layout gather marks exactly the same-conformer pairs;
- the default reproduces upstream behaviour;
- the full-fat config enables the flag on both encoders;
- the stock config is untouched.

**End to end** (9JIL, fp32, deterministic features and MSA, identical inputs, 1 recycle): IntelliFold-JAX before and after this PR, compared with the PyTorch IntelliFold-v2 implementation at each trunk stage.

| stage | before (rel. diff) | after |
|---|---|---|
| input embedding, atom-encoder channels | 0.156 | **1.35e-4** |
| input embedding (all 447 channels) | 4.9e-2 | **4.3e-5** |
| pair after MSA stack | 2.9e-3 | **3.6e-4** |
| single after 48 pairformer blocks | 3.9e-3 | **2.9e-4** |

The remaining difference is fp32 rounding. The pair output after 48 blocks stays at ~1e-2 in both runs because the pairformer amplifies any perturbation; JAX alone moves by 2e-2 between TF32 on and off.

🤖 Generated with [Claude Code](https://claude.com/claude-code)

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `66fb5eee6ec6`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.