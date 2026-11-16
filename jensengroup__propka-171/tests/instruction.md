# Issue

**Title:** Update versioneer to version 0.29

## Description

Installed versioneer 0.29 with Python 3.12 and ran

```sh
versioneer install
```

Fixes the following error when doing `pip install .` with Python 3.12:
```
  Preparing metadata (setup.py) ... error
  error: subprocess-exited-with-error
  
  × python setup.py egg_info did not run successfully.
  │ exit code: 1
  ╰─> [18 lines of output]
      propka/versioneer.py:421: SyntaxWarning: invalid escape sequence '\s'
        LONG_VERSION_PY['git'] = '''
      Traceback (most recent call last):
        File "<string>", line 2, in <module>
        File "<pip-setuptools-caller>", line 34, in <module>
        File "propka/setup.py", line 10, in <module>
          version=versioneer.get_version(),
                  ^^^^^^^^^^^^^^^^^^^^^^^^
        File "propka/versioneer.py", line 1480, in get_version
          return get_versions()["version"]
                 ^^^^^^^^^^^^^^
        File "propka/versioneer.py", line 1412, in get_versions
          cfg = get_config_from_root(root)
                ^^^^^^^^^^^^^^^^^^^^^^^^^^
        File "propka/versioneer.py", line 344, in get_config_from_root
          parser.readfp(f)
          ^^^^^^^^^^^^^
      AttributeError: 'ConfigParser' object has no attribute 'readfp'. Did you mean: 'read'?
      [end of output]

```

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `8ba1692e42ec`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.