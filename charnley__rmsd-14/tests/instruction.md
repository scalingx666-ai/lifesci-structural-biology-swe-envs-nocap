# Issue

**Title:** Fixed small bug and added features

## Description

fixed bug on line 283 where lines_read is not updated if ignore_hydrogens is set

Added two new flags to add (-a, --add-idx) or remove (-r, --remove-idx) specific atoms by their index from the supplied structures files before calculation.

Added extra output of the rotated structure_A for all the atoms if only a subset has been used due to -n, -a or -r flags.

Example output:
```
./calculate_rmsd.py CarbamicAcid.xyz NH3CO2.xyz -o -r 3 4 7
4

N      -0.02131277     -1.02005059      0.11750640
C       0.07064874      0.34038055     -0.05473715
O       1.11230161      0.94210408     -0.13936910
O      -1.12545299      0.99773510     -0.12749467

--------------- Full structure-a --------------
7

N      -0.02131277     -1.02005059      0.11750640
C       0.07064874      0.34038055     -0.05473715
H       0.84719878     -1.53437214      0.17500095
H      -0.88958851     -1.53098743      0.18923242
O       1.11230161      0.94210408     -0.13936910
O      -1.12545299      0.99773510     -0.12749467
H      -1.86629068      0.37921256     -0.04328419

```

```
./calculate_rmsd.py CarbamicAcid.xyz NH3CO2.xyz -o -a 3 4 7
3

H       0.97006042     -2.42007901     -0.97390867
H      -0.56949261     -2.29634025     -0.17948480
H      -0.54737672     -2.05019135      1.96429614

--------------- Full structure-a --------------
7

N       0.43869778     -2.31077081     -0.12076738
C       1.15328702     -2.19143373      1.04714466
H       0.97006042     -2.42007901     -0.97390867
H      -0.56949261     -2.29634025     -0.17948480
O       2.35756422     -2.20978547      1.10759375
O       0.39779024     -2.04561121      2.17675894
H      -0.54737672     -2.05019135      1.96429614
```

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `06e6be8a9176`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.