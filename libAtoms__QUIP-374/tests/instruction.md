# Issue

**Title:** Connection, DomainDecomposition => PRINT_NERD

## Description

Change print verbosity of all `calc_connect:` print calls from PRINT_VERBOSE to PRINT_NERD for less clutter (multiple lines per frame).

Example before change:
```
...
parser input line: <soap add_species = T l_max = 4 n_max = 8 atom_sigma = 0.5 zeta = 2 cutoff = 3.5 cutoff_transition_width = 0.5 central_weight = 1.0 n_sparse = 100 delta = 0.1 covariance_type = dot_product sparse_method = cur_points print_sparse_index = soap-sparse-indexes.dat mark_sparse_atoms = T>
parser defaulted: species_Z=0
parser defaulted: Z=0
cinoutput_read: doing read on proc 0
DomainDecomposition : initialise
calc_connect: cutoff calc_connect 4.5000000000000000
calc_connect: cells_N[abc] 1 1 1
calc_connect: image cells 2x2x2
calc_connect: occupied cells 1/1 = 1.0000000000000000
calc_connect: estimated number of neighbours per atom = 19
cinoutput_read: doing read on proc 0
DomainDecomposition : initialise
calc_connect: cutoff calc_connect 4.5000000000000000
calc_connect: cells_N[abc] 1 1 1
calc_connect: image cells 2x2x2
calc_connect: occupied cells 1/1 = 1.0000000000000000
calc_connect: estimated number of neighbours per atom = 19
...
...
cinoutput_read: doing read on proc 0
DomainDecomposition : initialise
calc_connect: cutoff calc_connect 4.5000000000000000
calc_connect: cells_N[abc] 8 8 8
calc_connect: image cells 1x1x1
calc_connect: occupied cells 1/512 = .19531250000000000E-002
calc_connect: estimated number of neighbours per atom = 1
cinoutput_read: doing read on proc 0
DomainDecomposition : initialise
calc_connect: cutoff calc_connect 4.5000000000000000
calc_connect: cells_N[abc] 6 6 6
calc_connect: image cells 1x1x1
calc_connect: occupied cells 1/216 = .46296296296296294E-002
calc_connect: estimated number of neighbours per atom = 1
XYZ file read
Allocate %tasks for 1136 tasks.
...
```

Should this be done for the following lines as well?
```
cinoutput_read: doing read on proc 0
DomainDecomposition : initialise
```

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `08f464fe7e33`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.