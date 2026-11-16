# Issue

**Title:** Add use_custom_templates option

## Description

## Introduction & motiviation
Dear OpenFold team,

Thank you very much for creating such a useful tool and give the community the opportunity to use, ablate and extend the implementation!

In my research, I look at the impact of templates and try to find new protocols centered around them. For some aspects of this, I found that [localcolabfold](https://github.com/YoshitakaMo/localcolabfold) was too restrictive and I would like to use some features, which OpenFold can offer. That is why I implemented the `use_custom_templates` option, which should be similar to the `--custom-template-path` argument of localcolabfold. I think this should be enough to have an implementation of [AF2Rank](https://github.com/jproney/AF2Rank) (see tests below), touted by some their ["favorite in the post-AF2 realm"](https://twitter.com/MoAlQuraishi/status/1722671413939650663).

## Changes
Basically, I fitted the template pipeline from [thread_sequence](https://github.com/aqlaboratory/openfold/blob/bb3f51e5a2cf2d5e3b709fe8f7d7a083c870222e/thread_sequence.py#L57) to use it with run_pretrained_model.py
- openfold/data/templates.py
    - extend get_custom_templates to use multiple files
    - create CustomHitFeaturizer to use this method
-  openfold/data/data_pipeline.py
    - make sure that we always read the templates if CustomHitFeaturizer is used, no matter what alignment we found
- run_pretrained_openfold.py
     - implement  `use_custom_templates` option
- README.md
    - update docs about option
## Tests
With the same pre-computed one row MSA, I saw that the inclusion of the template increased the pLDDT from 40ish to 80ish. I have not tested multimers or ESM single sequence mode, but it should not interfere with those. Don't know how well it plays along though.

I did a deeper dive and I think I found that using the very simple 1:1 mapping without alignment allows to use the template without any sequence information, except for the size of the sequence. As an empty `use_precomputed_alignments` also does not pass any information, this setup can be used for [AF2Rank](https://github.com/jproney/AF2Rank). The only other necessary condition is to correctly form the template to all GLY and only backbone + C-Beta. I can donate a script for the creation of this template in about one month after a deadline if you want.

The only test I did is with the randomly chosen, but short [3NIR](https://www.rcsb.org/structure/3NIR) against the AF2Rank implementation in the [ColabFold notebook](https://colab.research.google.com/github/sokrypton/ColabDesign/blob/gamma/af/examples/predict.ipynb).

Do you think the differences is within margin of error or should I have another look?
https://gist.github.com/rostro36/42113291b644388730b17d2aac1186be
## End
Please let me know what tests and adjustments I can fulfill to add this feature or if I should merge it to another branch first.
Thank you for work!

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `f37d0d964d24`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.