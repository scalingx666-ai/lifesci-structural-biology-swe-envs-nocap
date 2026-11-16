# Issue

**Title:** fix(calculator): trust the module tree over a contradicting metadata flag

## Description

Reopening: the shipped `wb97m_cpcm_v2_0.pt` still fails above `nb_threshold` after #120.

```
KeyError: "No neighbor matrix found for any suffix in ['_dftd3', '_lr']"
  aimnet/modules/lr.py:1129 in forward -> nbops.resolve_suffix(data, ["_dftd3", "_lr"])
```

Measured largest working 119 atoms, smallest failing 125 — the same boundary as before.

## Why #120 does not fire

#120 falls back to module-tree detection **only when `metadata is None`**:

```python
if metadata is not None:
    has_embedded_lr = metadata.get("has_embedded_lr", False)
else:
    has_embedded_lr = self._detect_embedded_lr_modules()
```

This artifact **has** a metadata dict. Dumped from the loaded calculator:

| source | value |
|---|---|
| `metadata["has_embedded_lr"]` | `False` |
| `metadata["has_embedded_d3ts"]` | `False` |
| `metadata["needs_dispersion"]` | `False` |
| `metadata["d3_params"]` | `None` |
| module tree | contains **`outputs.d3bj`** |
| `has_externalizable_dftd3(model)` | **`True`** |
| `calc._detect_embedded_lr_modules()` | **`True`** |

So `_detect_embedded_lr_modules()` is correct and simply never called. The
diagnosis in #118 was "pre-metadata artifacts have no flag to read"; the actual
class is **an artifact whose flag contradicts its own module tree**, and
treating a present metadata dict as authoritative is what makes that
unrecoverable.

## There is a second one behind it

Correcting only `has_embedded_lr` converts the `KeyError` into:

```
RuntimeError: Storage size calculation overflowed with sizes=[125, 837758040957278208]
```

`_has_embedded_dispersion()` carries the identical `metadata is None` gate, so
it also returns `False`; the `cutoff_lr` `elif` chain falls past the D3 branch
and lands on `inf`, and the naive neighbor list then tries to allocate a matrix
with 8.4e17 columns. Both detectors have to consult the module tree
unconditionally, or the first fix just moves the failure.

## Proposed fix

Treat the module tree as ground truth and metadata as a hint, in both places:

```python
# calculator.py, constructor
has_embedded_lr = (
    bool(metadata.get("has_embedded_lr", False)) if metadata is not None else False
) or self._detect_embedded_lr_modules()
```

```python
def _has_embedded_dispersion(self) -> bool:
    # A model that CARRIES a dispersion module needs a finite D3 cutoff
    # whatever its metadata says.
    if has_d3ts(self.model) or has_externalizable_dftd3(self.model):
        return True
    ...  # existing metadata paths unchanged
```

A wrong flag can only ever cause a *missing* long-range neighbor list, never a
spurious one, so OR-ing is safe in the direction that matters: it cannot break
a model whose metadata is correct.

## Regression, through the production call path

`saddleforge.mlff.load_aimnet2` → `AIMNet2Backend.compute()`:

| species | atoms | before | after |
|---|---:|---|---|
| water | 3 | −2081.294434 | −2081.294434 |
| benzene | 12 | −6324.149414 | −6324.149414 |
| aspirin | 21 | −17664.482422 | −17664.482422 |
| sucrose | 45 | −35343.621094 | −35343.621094 |
| docosanoic anhydride | **127** | **KeyError** | **−51071.078125** |

Byte-identical below the threshold, unblocked above it.

One caveat for anyone reproducing this: calling `AIMNet2Calculator.__call__` or
`backend._calc(...)` directly makes **water** fail without the fix, which is
misleading — `AIMNet2Backend.compute()` supplies the dense path's neighbor data
itself, so `lr=False` is harmless below `nb_threshold` and fatal only above it.
The comparison has to be made through `compute()`.

## Suggested follow-up, separate from this fix

The artifact's metadata is wrong at rest. Worth validating it against the
module tree at load and warning on disagreement, so the next artifact with a
stale flag surfaces as a warning rather than as a size-dependent crash in a
downstream pipeline.

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `b4e0e557f2cf`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.