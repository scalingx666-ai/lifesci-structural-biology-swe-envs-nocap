# Issue

**Title:** Small Bugfixes in closed PR #259

## Description

1- Allow single atom residues in template generation

~~2- Bugfix for option `--write_pdb` in CLI script mk_prepare_receptor~~

This is not a bug, but a behavior I didn't fully understand. 

Before: 

```
(mk_dev) amyhe@Amys-MBP ~/Downloads % mk_prepare_receptor.py -i three_res.pdb -o three_res_out --write_pdb
@> 4412 atoms and 1 coordinate set(s) were parsed in 0.02s.
Traceback (most recent call last):
  File "/Users/amyhe/micromamba/envs/mk_dev/bin/mk_prepare_receptor.py", line 33, in <module>
    sys.exit(load_entry_point('meeko', 'console_scripts', 'mk_prepare_receptor.py')())
  File "/Users/amyhe/Desktop/0_forks/Meeko/meeko/cli/mk_prepare_receptor.py", line 630, in main
    fn = args.write_pdb[0]
IndexError: list index out of range
```

3- Corrected polymer.to_pdb() that wrote element in columns 78-79

Before we wrote: 

```
ATOM      1  CL  CL  B1464      36.135  12.381  -3.884                       Cl 
```

After (expected):

```
ATOM      1  CL  CL  B1464      36.135  12.381  -3.884                      Cl 
```

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `de213bb414ac`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.