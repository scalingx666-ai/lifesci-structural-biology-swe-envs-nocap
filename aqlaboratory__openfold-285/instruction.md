# Issue

**Title:** Fix notebook: Colab now has python 3.8, fix imports, mitigate UTF-8 glitch

## Description

Make the colab notebook work (fix issue #286):

* Python 3.8 is now what we get in Colab, use it in our Conda as well
* Fix imports, make some unconditional - chain of depencencies makes them needed even for relax_prediction==False (overwrite_b_factors() comes from [file](https://github.com/aqlaboratory/openfold/blob/main/openfold/np/relax/utils.py#L40) which imports openmm)
* Mitigate spurious error "A UTF-8 locale is required. Got ANSI_X3.4-1968" which makes all shell commands defunct - use shutil.make_archive()
* In the second commit, mitigate the ANSI_X3.4-1968 problem yet much better, making %shell work again

The strange "ANSI_X3.4-1968" thing happens sometimes [not only to us](https://stackoverflow.com/questions/56081324/why-are-google-colab-shell-commands-not-working). When it happens, no shell commands work anymore. Likely . I used the same mitigation as  (use shutil, see their ), this way our and their notebooks do not differ more than necessary. But I found this solution insuficient because it just avoids using %shell, leaving it broken. So I added the second commit which I think is superior to AlphaFold's fix (which can still stay there).

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `886494ffda84`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.