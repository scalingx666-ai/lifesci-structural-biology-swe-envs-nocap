# Issue

**Title:** fix: preserve autograd graph in to_input_tensors when coord requires grad

## Description

## Problem

`AIMNet2Calculator.to_input_tensors()` unconditionally called `.detach()` on all input tensors. This disconnected the caller's `coord` from the computation graph, making external Hessian computation via `torch.autograd.functional.hessian()` return all-zero results ().

## Fix

Skip `.detach()` when the input tensor already has `requires_grad=True`:

```python
t = torch.as_tensor(data[k], device=self.device, dtype=self.keys_in[k])
if not (isinstance(data[k], Tensor) and data[k].requires_grad):
    t = t.detach()
ret[k] = t
```

**Why this is safe:**
- `F.pad` (`pad_input`) and `.flatten()` (`mol_flatten`) are differentiable — the graph is preserved through padding and flattening.
- `requires_grad_(True)` on a non-leaf tensor that already requires grad is a PyTorch no-op, so `set_grad_tensors()` is unaffected.
- Tensors without `requires_grad` are still detached — backward compatibility with optimization loops is fully preserved.

**Known scope limitation:** if `forces=True` is passed alongside an external Hessian workflow, the internal `get_derivatives` backward frees intermediate tensors (D3 custom op limitation). The external-Hessian pattern should use `forces=False` in `energy_fn` and differentiate from outside.

## Tests

Four new regression tests in `TestDerivatives`:

| Test | What it checks |
|------|---------------|
| `test_external_autograd_graph_preserved` | `grad(energy, coord)` is non-None when `requires_grad=True` |
| `test_external_hessian_nonzero` | `torch.autograd.functional.hessian()` returns non-zero result |
| `test_external_hessian_matches_internal` | External Hessian agrees with `hessian=True` output within 0.5% |
| `test_requires_grad_false_still_works` | `forces=True` still works without `requires_grad` (backward compat) |

All 55 calculator tests pass.

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `c2d88996d5ac`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.