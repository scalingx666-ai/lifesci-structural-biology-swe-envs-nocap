# Issue

**Title:** Enclose version string in quotes

## Description

I hit the following error when trying to build a conda env for [plaid](https://github.com/amyxlu/plaid)

```
Collecting git+https://github.com/amyxlu/cheap-proteins.git (from -r /home/alexn/plaid/requirements.txt (line 39))
  Cloning https://github.com/amyxlu/cheap-proteins.git to /tmp/pip-req-build-bp57cuf0
  Resolved https://github.com/amyxlu/cheap-proteins.git to commit f7b3b0f9eee2e26023dfc3cd61d233be5b4bc695
  Preparing metadata (setup.py): started
  Preparing metadata (setup.py): finished with status 'error'

Pip subprocess error:
  Running command git clone --filter=blob:none --quiet https://github.com/facebookresearch/esm.git /tmp/pip-req-build-ocgq43hp
  Running command git clone --filter=blob:none --quiet https://github.com/amyxlu/evo.git /tmp/pip-req-build-ool9l8co
  Running command git clone --filter=blob:none --quiet https://github.com/webdataset/webdataset.git /tmp/pip-req-build-j0ks8mjn
  Running command git rev-parse -q --verify 'sha^5b12e0ba78bfb64741add2533c5d1e4cf088ffff'
  Running command git fetch -q https://github.com/webdataset/webdataset.git 5b12e0ba78bfb64741add2533c5d1e4cf088ffff
  Running command git checkout -q 5b12e0ba78bfb64741add2533c5d1e4cf088ffff
  Running command git clone --filter=blob:none --quiet https://github.com/amyxlu/cheap-proteins.git /tmp/pip-req-build-bp57cuf0
  error: subprocess-exited-with-error
  
  × python setup.py egg_info did not run successfully.
  │ exit code: 1
  ╰─> [7 lines of output]
      Traceback (most recent call last):
        File "<string>", line 2, in <module>
        File "<pip-setuptools-caller>", line 34, in <module>
        File "/tmp/pip-req-build-bp57cuf0/setup.py", line 7
          version=1.0.0,
                  ^^^^^
      SyntaxError: invalid syntax. Perhaps you forgot a comma?
      [end of output]
  
  note: This error originates from a subprocess, and is likely not a problem with pip.
error: metadata-generation-failed

× Encountered error while generating package metadata.
╰─> See above for output.

note: This is an issue with the package mentioned above, not pip.
hint: See above for details.

failed

CondaEnvException: Pip failed
```

I think this small change resolves it. 

Thanks for sharing these great repos with the community!

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `f7b3b0f9eee2`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.