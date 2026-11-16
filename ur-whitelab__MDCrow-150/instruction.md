# Issue

**Title:** Feature het code in pdb from smiles

## Description

Hi! this is the first part of the PRs needed to get the simulation working for systems with solvents different than water.
Basically makes it such that the pdb file downloaded from the smiles for small molecules goes from:
```
HETATM    1  C1  UNL     1      -0.360  -0.003  -0.018  1.00  0.00           C  
HETATM    2  O1  UNL     1       0.914   0.522  -0.078  1.00  0.00           O  
HETATM    3  H1  UNL     1      -0.490  -0.816  -0.757  1.00  0.00           H  
HETATM    4  H2  UNL     1      -0.615  -0.390   0.996  1.00  0.00           H  
HETATM    5  H3  UNL     1      -1.069   0.834  -0.202  1.00  0.00           H  
HETATM    6  H4  UNL     1       1.619  -0.147   0.060  1.00  0.00           H  
CONECT    1    2    3    4    5
CONECT    2    6
END
```

to
```
COMPND    ethanol
HETATM    1  C1  EOH     1      -0.953   0.048   0.042  1.00  0.00           C  
HETATM    2  C2  EOH     1       0.489  -0.320  -0.189  1.00  0.00           C  
HETATM    3  O1  EOH     1       1.277   0.325   0.738  1.00  0.00           O  
HETATM    4  H1  EOH     1      -1.357   0.734  -0.733  1.00  0.00           H  
HETATM    5  H2  EOH     1      -1.593  -0.863   0.022  1.00  0.00           H  
HETATM    6  H3  EOH     1      -1.071   0.596   1.011  1.00  0.00           H  
HETATM    7  H4  EOH     1       0.788  -0.138  -1.238  1.00  0.00           H  
HETATM    8  H5  EOH     1       0.590  -1.429  -0.041  1.00  0.00           H  
HETATM    9  H6  EOH     1       1.831   1.047   0.388  1.00  0.00           H  
CONECT    1    2    4    5    6
CONECT    2    3    7    8
CONECT    3    9
END
```

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `6333298c400a`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.