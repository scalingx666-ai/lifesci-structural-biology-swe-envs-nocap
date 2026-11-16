# Issue

**Title:** Fix Colab again after ModelCIF merge and python version change in Colab

## Description

Recent #284 merge broke the Colab notebook in two ways:
* added new dependency on modelcif (I'd say it's notebook's fault to get broken so easily)
* added required arguments cif_output (here I propose a slight change in the cif code)

This PR adds the modelcif dependency to Colab. For the new arguments, instead of adding them to the notebook, I rather made them optional in the cif output code as people may have an existing code which was also broken by the change. With optional arguments, things are easily made backward compatible.

In addition, Google Colab changed Python version to 3.9 and we absolutely must track this change in the tricky conda install in Colab. First I just changed 3.8 to 3.9 at four places in b95099b and then automated such changes for the future in 8b36691.

@josemduarte I slightly touched your recent code, just making some args optional, please check feb9993

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `b5fa2ba316c2`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.