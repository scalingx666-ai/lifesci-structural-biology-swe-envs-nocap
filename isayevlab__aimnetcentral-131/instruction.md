# Issue

**Title:** fix(calculator): refuse derivatives an embedded tabulated DFT-D3 cannot supply

## Description

A tabulated DFT-D3 module left inside a model's own module tree contributes no second derivative and no cell gradient, and nothing says so.

Its energy reaches autograd through a first-order-only `autograd.Function`. The backward multiplies a `forces` tensor taken from `ctx.saved_tensors`, which carries no graph, so the second derivative is structurally zero. The same backward returns `None` for the `cell` input, while `compute_virial` is gated on a `scaling` argument the model's output loop never passes. Since neighbor shifts are integers and the periodic displacement is formed as `shifts @ cell` inside the kernel, the entire image contribution is reachable only through that cell gradient.

Measured against finite differences, comparing a model with dispersion embedded against the same model with dispersion attached externally by the calculator:

| quantity | external, correct | embedded |
| --- | --- | --- |
| max abs Hessian error vs finite difference | 8.1e-03 eV/A^2 | 4.98e-01 eV/A^2 |
| dispersion Hessian block, Frobenius norm | 1.3887 | 4.75e-05 |
| max abs stress error vs finite difference | 5.1e-05 eV/A^3 | 1.10e-02 eV/A^3 |
| pressure on a test crystal | 28.44 GPa | 30.12 GPa |

That is the whole dispersion curvature and about 95% of the dispersion virial. The function is not decorated `@once_differentiable`, so inside a full model the network supplies a graph and the dispersion term silently contributes zero.

Energy and forces are correct, so this refuses only the affected quantities: Hessians, Hessian-vector products, and stress. The error names the remedy.

Detection now tests the class rather than the key the module sits under. The existing predicate asks whether anything is registered at `dftd3`/`d3bj`, which is the right question for sizing a neighbor list and the wrong one here: it warned for `D3TS` under that key, where there is no defect, and stayed silent for a `DFTD3` under any other key, where there is. `has_externalizable_dftd3` keeps its key semantics. The narrower warning added to `vibrational_analysis` is removed, superseded by the calculator refusing the operation outright.

No registry model is affected. Dispersion is attached externally, the default artifact policy rejects `aimnet.modules.DFTD3` as an untrusted import path, and the exporter strips it. The configuration is reachable only through a hand-built module, an unsafe import mode, a training config, or a legacy TorchScript file.

Making the module actually differentiable is the complete fix and is left for a follow-up issue, which records the measurements and the reason: its cost is memory rather than speed, the expensive path is the same one the working external path already uses for every Hessian, and it would make correct a configuration this change makes unreachable.

Why no existing test caught it: the dispersion tests call the module directly and pass the flags by hand, exercising the two paths the calculator does not take for an embedded module; the calculator-level Hessian test asserts only that values are finite and nonzero, which a zeroed dispersion block passes because the network block dominates; and the vector-product test compares against the dense Hessian of the same calculator, so both sides share the defect and agree.

Gates: `pre-commit run -a` and `mkdocs build -s` clean, 683 in the CI-core selection, 682 in the dynamo-disabled lane the torch matrix uses, 157 GPU-marked.

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `c890b1279dac`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.