# Issue

**Title:** Implement velocity rescaling methods

## Description

This PR implements four methods:

- [Simple velocity rescaling](https://docs.lammps.org/fix_temp_rescale.html) [1]
- [Berendsen thermostat ](https://docs.lammps.org/fix_temp_berendsen.html) [2]
- [Canonical sampling through velocity rescaling (CSVR) thermostat ](https://docs.lammps.org/fix_temp_csvr.html) [3]
- [Gaussian thermostat (Isokinetic Ensemble)](https://docs.lammps.org/fix_nvk.html) [4,5]

1. Woodcock, L. V. "ISOTHERMAL MOLECULAR DYNAMICS CALCULATIONS FOR LIQUID SALTS." Chem. Phys. Lett. 1971, 10, 257–261.
2. H. J. C. Berendsen, J. P. M. Postma, W. F. van Gunsteren, A. DiNola, J. R. Haak. "Molecular dynamics with coupling to an external bath." J. Chem. Phys. 15 October 1984; 81 (8): 3684–3690.
3. Bussi G, Donadio D, Parrinello M. "Canonical sampling through velocity rescaling." The Journal of chemical physics, 126(1), 014101.
4. Minary, Peter and Martyna, Glenn J. and Tuckerman, Mark E. "Algorithms and novel applications based on the isokinetic ensemble. I. Biophysical and path integral molecular dynamics" J. Chem. Phys., Vol. 118, No. 6, 8 February 2003.
5. Zhang, Fei. "Operator-splitting integrators for constant-temperature molecular dynamics" J. Chem. Phys. 106, 6102–6106 (1997).

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `a387b57a9855`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.