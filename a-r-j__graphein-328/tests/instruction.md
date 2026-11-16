# Issue

**Title:** Update pyyaml version breaking installation

## Description

A recent update to cython3 has broken some of the older version of pyyaml, this makes it so that the versions that can be installed are the ones that are not broken

#### Reference Issues/PRs
This is related to an issue with the pyyaml library which is one of the dependencies: 

#### What does this implement/fix? Explain your changes
Currently, if you try downloading `graphein` you get the following error (this was tested with python v3.10.* and 3.12.*):
```
Collecting pyyaml<6.0,>=5.1 (from graphein==1.7.0)
  Using cached PyYAML-5.4.1.tar.gz (175 kB)
  Installing build dependencies ... done
  Getting requirements to build wheel ... error
  error: subprocess-exited-with-error

  × Getting requirements to build wheel did not run successfully.
  │ exit code: 1
  ╰─> [62 lines of output]
      /tmp/pip-build-env-h7h1sf8u/overlay/lib/python3.10/site-packages/setuptools/config/setupcfg.py:293: _DeprecatedConfig: Deprecated config in `setup.cfg`
      !!

              ********************************************************************************
              The license_file parameter is deprecated, use license_files instead.

              By 2023-Oct-30, you need to update your project and remove deprecated calls
              or your builds will no longer be supported.

              See https://setuptools.pypa.io/en/latest/userguide/declarative_config.html for details.
              ********************************************************************************

      !!
        parsed = self.parsers.get(option_name, lambda x: x)(value)
      running egg_info
      writing lib3/PyYAML.egg-info/PKG-INFO
      writing dependency_links to lib3/PyYAML.egg-info/dependency_links.txt
      writing top-level names to lib3/PyYAML.egg-info/top_level.txt
      Traceback (most recent call last):
        File "/home/amerii/projects/graphein/.venv/lib/python3.10/site-packages/pip/_vendor/pyproject_hooks/_in_process/_in_process.py", line 353, in <module>
          main()
        File "/home/amerii/projects/graphein/.venv/lib/python3.10/site-packages/pip/_vendor/pyproject_hooks/_in_process/_in_process.py", line 335, in main
          json_out['return_val'] = hook(**hook_input['kwargs'])
        File "/home/amerii/projects/graphein/.venv/lib/python3.10/site-packages/pip/_vendor/pyproject_hooks/_in_process/_in_process.py", line 118, in get_requires_for_build_wheel
          return hook(config_settings)
        File "/tmp/pip-build-env-h7h1sf8u/overlay/lib/python3.10/site-packages/setuptools/build_meta.py", line 341, in get_requires_for_build_wheel
          return self._get_build_requires(config_settings, requirements=['wheel'])
        File "/tmp/pip-build-env-h7h1sf8u/overlay/lib/python3.10/site-packages/setuptools/build_meta.py", line 323, in _get_build_requires
          self.run_setup()
        File "/tmp/pip-build-env-h7h1sf8u/overlay/lib/python3.10/site-packages/setuptools/build_meta.py", line 338, in run_setup
          exec(code, locals())
        File "<string>", line 271, in <module>
        File "/tmp/pip-build-env-h7h1sf8u/overlay/lib/python3.10/site-packages/setuptools/__init__.py", line 107, in setup
          return distutils.core.setup(**attrs)
        File "/tmp/pip-build-env-h7h1sf8u/overlay/lib/python3.10/site-packages/setuptools/_distutils/core.py", line 185, in setup
          return run_commands(dist)
        File "/tmp/pip-build-env-h7h1sf8u/overlay/lib/python3.10/site-packages/setuptools/_distutils/core.py", line 201, in run_commands
          dist.run_commands()
        File "/tmp/pip-build-env-h7h1sf8u/overlay/lib/python3.10/site-packages/setuptools/_distutils/dist.py", line 969, in run_commands
          self.run_command(cmd)
        File "/tmp/pip-build-env-h7h1sf8u/overlay/lib/python3.10/site-packages/setuptools/dist.py", line 1234, in run_command
          super().run_command(command)
        File "/tmp/pip-build-env-h7h1sf8u/overlay/lib/python3.10/site-packages/setuptools/_distutils/dist.py", line 988, in run_command
          cmd_obj.run()
        File "/tmp/pip-build-env-h7h1sf8u/overlay/lib/python3.10/site-packages/setuptools/command/egg_info.py", line 314, in run
          self.find_sources()
        File "/tmp/pip-build-env-h7h1sf8u/overlay/lib/python3.10/site-packages/setuptools/command/egg_info.py", line 322, in find_sources
          mm.run()
        File "/tmp/pip-build-env-h7h1sf8u/overlay/lib/python3.10/site-packages/setuptools/command/egg_info.py", line 551, in run
          self.add_defaults()
        File "/tmp/pip-build-env-h7h1sf8u/overlay/lib/python3.10/site-packages/setuptools/command/egg_info.py", line 589, in add_defaults
          sdist.add_defaults(self)
        File "/tmp/pip-build-env-h7h1sf8u/overlay/lib/python3.10/site-packages/setuptools/command/sdist.py", line 104, in add_defaults
          super().add_defaults()
        File "/tmp/pip-build-env-h7h1sf8u/overlay/lib/python3.10/site-packages/setuptools/_distutils/command/sdist.py", line 251, in add_defaults
          self._add_defaults_ext()
        File "/tmp/pip-build-env-h7h1sf8u/overlay/lib/python3.10/site-packages/setuptools/_distutils/command/sdist.py", line 336, in _add_defaults_ext
          self.filelist.extend(build_ext.get_source_files())
        File "<string>", line 201, in get_source_files
        File "/tmp/pip-build-env-h7h1sf8u/overlay/lib/python3.10/site-packages/setuptools/_distutils/cmd.py", line 107, in __getattr__
          raise AttributeError(attr)
      AttributeError: cython_sources
      [end of output]

  note: This error originates from a subprocess, and is likely not a problem with pip.
error: subprocess-exited-with-error

× Getting requirements to build wheel did not run successfully.
│ exit code: 1
╰─> See above for output.

note: This error originates from a subprocess, and is likely not a problem with pip.
```

This PR fixes this by fixing updating the `pyyaml` version to: `pyyaml!=6.0.0,!=5.4.0,!=5.4.1`

#### What testing did you do to verify the changes in this PR?
I am unable to verify whether my changes made the following tests, as I am unable to install the older version due to the error above. The following tests are currently failing:
```
================================================= short test summary info ==================================================
ERROR tests/ml/test_conversion.py
ERROR tests/ml/test_torch_geometric_dataset.py
ERROR tests/molecule/test_graphs.py - NameError: name 'Chem' is not defined
ERROR tests/molecule/test_rdkit_utils.py
ERROR tests/molecule/test_zinc.py - NameError: name 'Chem' is not defined
ERROR tests/protein/tensor/test_angles.py
ERROR tests/protein/tensor/test_data.py
ERROR tests/protein/tensor/test_geometry.py
ERROR tests/protein/tensor/test_io.py
ERROR tests/protein/tensor/test_reconstruction.py
ERROR tests/protein/tensor/test_representation.py
ERROR tests/protein/tensor/test_sequence.py
ERROR tests/rna/test_graphs.py
ERROR tests/utils/test_cli.py - NameError: name 'Chem' is not defined
ERROR tests/utils/test_yml_parser.py - NameError: name 'Chem' is not defined
!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!! Interrupted: 15 errors during collection !!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
============================================= 4 warnings, 15 errors in 15.85s ==============================================
```
#### Pull Request Checklist

<!--
Please fill out the following checklist if applicable. For more more information and help, please see the Contributor Documentation avaialable at https://graphein.ai/contributing/contributing.html.
-->

- [ ] Added a note about the modification or contribution to the `./CHANGELOG.md` file (if applicable)
- [x] Added appropriate unit test functions in the `./graphein/tests/*` directories (if applicable)
- [x] Modify documentation in the corresponding Jupyter Notebook under `./notebooks/` (if applicable)
- [ ] Ran `python -m py.test tests/` and make sure that all unit tests pass (for small modifications, it might be sufficient to only run the specific test file, e.g., `python -m py.test tests/protein/test_graphs.py`)
- [x] Checked for style issues by running `black .` and `isort .`


<!--
We value all user contributions, no matter how minor they are.

Thanks for contributing!
-->

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `94cbbb70280c`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.