# Issue

**Title:** Minor changes to make out of tree builds painless

## Description

Change-1
Some IMP headers, especially some that get created dynamically from templates at build-time are ```include```-d in a way in the source code that makes out-of-tree builds hard to find them, when IMP is not installed but is run from the build-dir with the ```setup_environment.sh``` script (which by the way is a common way to run IMP). This PR tracks some changes like that and fixes them. 

E.g:
change ```TripletRestraint.h``` to ```<IMP/core/TripletRestraint.h>``` in ```imp/modules/core/include/AngleRestraint.h```
change ```core_config.h``` to ```<IMP/core/core_config.h>``` in ```imp/modules/core/include/RigidBodyAnglePairScore.h```
change ```InContainerPairFilter.h``` to ```<IMP/container/InContainerPairFilter.h>``` in  ```imp/modules/container/include/generic.h```

While, it appears that this are the all changes that might be required for ```core``` and ```container```, it is still hacky since more fail cases may appear with other modules later. Also tested that ```atom``` has no such issue for now. 

Change-2
Corrected a typo in ```tools/build/make_module_version.py```.

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `2ac8ee5e5ad5`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.