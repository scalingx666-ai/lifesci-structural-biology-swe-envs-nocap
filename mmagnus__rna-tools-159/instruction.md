# Issue

**Title:** Add versioneer to build-system requirements

## Description

`setup.py` imports `versioneer` at module level, but it wasn't declared in `pyproject.toml`'s build requirements. This caused `ModuleNotFoundError` during pip install in isolated build environments (PEP 517).

## Changes

- Added `versioneer` to `build-system.requires` in `pyproject.toml`

```toml
[build-system]
requires = [
    "setuptools<72",
    "wheel",
    "versioneer"  # Added
]
```

<!-- START COPILOT ORIGINAL PROMPT -->

<details>

<summary>Original prompt</summary>

>
> ----
>
> *This section details on the original issue you should resolve*
>
> <issue_title>Fix this mess: ModuleNotFoundError: No module named 'versioneer'</issue_title>
> <issue_description>get_requires_for_build_editable
>           return self.get_requires_for_build_wheel(config_settings)
>         File "/tmp/pip-build-env-ozmnf1l2/overlay/lib/python3.8/site-packages/setuptools/build_meta.py", line 327, in get_requires_for_build_wheel
>           return self._get_build_requires(config_settings, requirements=[])
>         File "/tmp/pip-build-env-ozmnf1l2/overlay/lib/python3.8/site-packages/setuptools/build_meta.py", line 297, in _get_build_requires
>           self.run_setup()
>         File "/tmp/pip-build-env-ozmnf1l2/overlay/lib/python3.8/site-packages/setuptools/build_meta.py", line 313, in run_setup
>           exec(code, locals())
>         File "<string>", line 2, in <module>
>       ModuleNotFoundError: No module named 'versioneer'
>       [end of output]
>
>   note: This error originates from a subprocess, and is likely not a problem with pip.
> error: subprocess-exited-with-error
>
> × Getting requirements to build editable did not run successfully.
> │ exit code: 1
> ╰─> See above for output.
>
> note: This error originates from a subprocess, and is likely not a problem with pip.
> Error: Process completed with exit code 1.</issue_description>
>
> ## Comments on the Issue (you are @copilot in this section)
>
> <comments>
> </comments>
>

</details>

<!-- START COPILOT CODING AGENT SUFFIX -->

- Fixes mmagnus/rna-tools#158

<!-- START COPILOT CODING AGENT TIPS -->
---

✨ Let Copilot coding agent  — coding agent works faster and does higher quality work when set up for your repo.

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `ff53c5db1c4c`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.