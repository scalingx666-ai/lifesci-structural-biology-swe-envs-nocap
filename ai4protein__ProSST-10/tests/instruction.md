# Issue

**Title:** Speed up PdbQuantizer

## Description

Hello, I recently started using ProSST and think it is fantastic! However, I found the PdbQuantizer to be too slow. So I re-wrote it to 1) take in lists of file names instead of a single file at a time, and 2) do most of the difficult compute on the GPU instead of the CPU (namely, the generate_pos_subgraph function).

In my tests, this took a batch of 100 proteins from running in about 7 hours to running in about 80 seconds. I confirmed that the output quantized structures were identical between your version and this one. 

Interface is largely the same as before, just the input can be a string or a list of strings now, and the initializer has an optional parameter for batch_size instead of threads:
```
from prosst.structure.quantizer import PdbQuantizer
processor = PdbQuantizer(structure_vocab_size=2048) # can be 20, 128, 512, 1024, 2048, 4096
result = processor(["example_data/p1.pdb", "example_data/p2.pdb"], return_residue_seq=False)
```

I hope this is helpful to others and please let me know if you have any questions!

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `4239c9950b20`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.