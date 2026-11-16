# Issue

**Title:** fix typo when indexing into gap scores in forward pass

## Description

Hi DeepBLAST team,

while trying out the [Aligning proteins example](https://github.com/flatironinstitute/deepblast/wiki/Aligning-proteins) from your Wiki page, I noticed somewhat undefined behaviour when trying to align two specific sequences when loading the DeepBLAST model on the CPU:
```
import torch, os
from deepblast.utils import load_model

os.system("wget https://users.flatironinstitute.org/jmorton/public_www/deepblast-public-data/checkpoints/deepblast-pt-l8.ckpt")

model = load_model("deepblast-pt-l8.ckpt",  device="cpu")

seq_1 = "GGREGVLKKLRAVENELHYNKSLLEEVKD"
seq_2 = "QTNINSLAVRGKDCTVVISQKKVPDKLLDPTTVSYIFCISRTIGMVVNGPIPDARNAALRAKAEAAEFRYKYG"

pred_alignment = model.align(seq_1, seq_2)
print(pred_alignment)
```

Running this example sometimes succeeds, but often prints a different alignment string for every re-run, which it should'nt. The calculated alignments also differ from the alignment that gets calculated when running the model on the GPU with the same input sequences.
Other times the program crashes with errors like `RuntimeError: Function 'NeedlemanWunschFunctionBackward' returned nan values in its 0th output.` or `IndexError: index -30 is out of bounds for dimension 0 with size 29`.

I fixed these errors for myself by adjusting the indices that are used in the `_forward_pass_numba` function in [nw.py](https://github.com/flatironinstitute/deepblast/blob/master/deepblast/nw.py) to access the gap scores/penalties. This also looks like it is maybe just a typo.

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `a4df9935d91a`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.