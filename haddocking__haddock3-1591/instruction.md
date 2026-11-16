# Issue

**Title:** Claude code review

## Description

## Checklist

- [ ] Tests added for the new code
- [ ] Documentation added for the code changes
- [ ] Modifications / enhancements are reflected on the [haddock3 user-manual](https://github.com/haddocking/haddock3-user-manual)
- [ ] `CHANGELOG.md` is updated to incorporate new changes
- [X] Does not break licensing
- [X ] Does not add any dependencies, if it does please add a thorough explanation

## Summary of the Pull Request  

Add CLAUDE.md which contains information for AI agents
Add a FIXME.md file that documents the finding from the code review by claude (opus)
Fixed the various minor issues identified by Claude - see FIXME.md

## Related Issue

None

## Additional info about the fixes:

### [FIXED] `randint` overshoots the upper bound

**File:** `src/haddock/libs/libmath.py:27`

```python
# current (wrong)
return int(self() * (upper_limit + 1)) + lower_limit
```

`self()` is called with no arguments, so it always returns `uniform(0, 1)` —
the `lower_limit`/`upper_limit` passed to `randint` never reach it. The result
therefore spans `[lower_limit, lower_limit + upper_limit]` instead of
`[lower_limit, upper_limit]`.

```python
# corrected
return lower_limit + int(self() * (upper_limit - lower_limit + 1))
```

**Callers:** `libcns.py:310` and `libcns.py:497`, both `RND.randint(100, 99999)`,
which currently yield `[100, 100099]`.

**Impact:** Low. These are CNS random seeds; CNS accepts any integer, so there
is no runtime failure — only a slightly shifted seed range. Worth fixing for
correctness, not urgency.

---

### [FIXED] Wrong dict key in string-length validation

**File:** `src/haddock/gear/prepare_run.py:752`

```python
elif "minchars" in param.keys() and "maxchars" in param.keys():
    if (nbchars := len(val)) < param["minchars"] or nbchars > param["maxchars"]:
        _desc = "under" if nbchars < param["minitems"] else "exceeding"
        #                                  ^^^^^^^^^^^ should be param["minchars"]
```

This branch is reached only for string parameters that define `minchars`/
`maxchars` and **not** `minitems`. When such a parameter fails its length check,
`param["minitems"]` raises `KeyError`, masking the real validation message.

**Impact:** Medium — the only genuinely live correctness bug in this list,
though it fires solely on a validation failure path.

**Fix:** `param["minchars"]`.

---

### [FIXED] `open(None, ...)` when `error_file` is omitted

**File:** `src/haddock/libs/libsubprocess.py:249`

```python
with open(self.error_file, "wb+") as errf:   # TypeError if error_file is None
```

`error_file` defaults to `None`. On a CNS error this would raise `TypeError`
instead of a useful diagnostic.

**Status:** Latent in practice — every `CNSJob` construction in the codebase
passes `err_fname` as the third positional argument, so `error_file` is never
`None` today. Severity was downgraded from the original HIGH.

**Fixed:** guarded the `.err` write/compress with `if self.error_file is not
None:`. The subsequent `raise CNSRunningError(error)` is now reached regardless,
so a future caller that omits `error_file` gets the real CNS diagnostic instead
of a `TypeError` from `open(None, ...)`.

---

### [FIXED] `split_tasks([])` raises `ValueError`

**File:** `src/haddock/libs/libparallel.py:21`

```python
n = math.ceil(len(lst) / n)   # 0 when lst is empty → range(0, 0, 0)
```

An empty task list makes `n == 0`, and `range(0, 0, 0)` raises
`ValueError: range() arg 3 must not be zero`.

**Status:** Latent in practice — modules always submit at least one job.

**Fixed:** added an early `if not lst: return` guard at the top. Since
`split_tasks` is a **generator**, the bare `return` correctly yields nothing
(rather than `return []`).

---

### [FIXED] Double assignment to `self.params["cns_exec"]`

**File:** `src/haddock/modules/base_cns_module.py:112-114`

```python
self.params["cns_exec"] = shutil.copyfile(_cns_exec, new_cns)  # immediately overwritten
shutil.copystat(_cns_exec, new_cns)
self.params["cns_exec"] = Path("..", Path(_cns_exec).name)
```

The first assignment is dead. Harmless; clarity only.

---

### [FIXED] Vestigial `self.len`

**File:** `src/haddock/libs/libontology.py:115`

```python
self.len = score   # score is NaN by default; .len is never read
```

Confirmed: `self.len` is the only occurrence of that attribute in the entire
tree — written on every `PDBFile`, never read. Dead code.

---

### [FIXED] Step-folder parsing assumes no underscore in module names

**File:** `src/haddock/modules/analysis/caprieval/capri.py:69`

```python
sel_steps = [step for step in sel_steps if step.count("_") == 1]
```

Folder names are `<N>_<module_name>`; this silently drops any step whose module
name contains an underscore. Safe today (no such module), fragile for the future.

---

### [FIXED] Unhelpful `inject_in_modules` error message

**File:** `src/haddock/gear/prepare_run.py:1066-1068`

```python
raise ValueError(
    "key {key!r} already in {module!r} parameters. " "Can't inject."
)
```

The original report claimed this raises `NameError`. It does **not** — the
string is not an f-string, so `{key!r}`/`{module!r}` are printed literally and
`module` is never evaluated. Two real defects remained, though: the placeholders
were never interpolated, and `module` is not even a variable in this scope (the
loop binds `params`), so it could never have rendered usefully.

**Fixed:** turned the message into an f-string and dropped the bogus `module`
reference: `raise ValueError(f"key {key!r} already in module parameters. Can't inject.")`

---

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `d5d0d22c5a9a`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.