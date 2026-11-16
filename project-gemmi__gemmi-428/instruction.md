# Issue

**Title:** fix(metadata): restore TlsGroup tensor initialization

## Description

Restores NAN initialization of `TlsGroup::T`, `::L`, and `::S` that was removed during the Doxygen documentation PR series (#414).

## The bug

The original code initialized these tensors to NAN:
```cpp
SMat33<double> T = {NAN, NAN, NAN, NAN, NAN, NAN};
SMat33<double> L = {NAN, NAN, NAN, NAN, NAN, NAN};
Mat33 S = Mat33{NAN};
```

After #414 these became:
```cpp
SMat33<double> T;
SMat33<double> L;
Mat33 S;
```

## Why it matters

The mmCIF writer uses `number_or_qmark` in `src/to_mmcif.cpp`:
```cpp
inline std::string number_or_qmark(double d) {
  return std::isnan(d) ? "?" : to_str(d);
}
```

With the original NAN initializers, a `TlsGroup` that was instantiated but never populated would emit `?` (unset) for all tensor components in mmCIF output. Without the initializers:

- `SMat33<double> T, L` hold undefined values → garbage numbers in output
- `Mat33 S` defaults to identity matrix → emitted as `1.0 0.0 0.0 0.0 1.0 0.0 0.0 0.0 1.0`, indistinguishable from real TLS S-tensor data

A partially populated `TlsGroup` (e.g. origin and selections set, tensors not yet computed) would silently write misleading numerical data to disk that downstream refinement programs would treat as valid.

## Relation to earlier fix

Commit 2c1b0c5 restored the analogous initialization for `RefinementInfo::aniso_b` but missed the `TlsGroup` tensors. This PR completes that fix.

## Companion PR

Related: #427 fixes a separate missed initialization (`GridMeta::spacegroup`) from the same PR series.

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `f39a1cfb0b30`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.