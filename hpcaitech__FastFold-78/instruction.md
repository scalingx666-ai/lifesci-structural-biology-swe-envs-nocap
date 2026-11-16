# Issue

**Title:** Triton kernel

## Description

### Highlight 

- add triton kernel for `LayerNorm` and `FusedSoftmax`. (support precision: `float32`, `float16`, `bfloat16`)
- add an unified entrypoint for fastnn.kernel (shown in `fastfold/model/fastnn/kernel/__init__.py`)
  - default dispatch to triton kernel
  - if triton not found dispatch to cuda kernel

> from torch 1.12, need `torch.backends.cuda.matmul.allow_tf32 = True` to use tf32 on A100. To compare with the previous performance results, we turned on the tf32 option.

### evoformer performance 

test on A100 (SXM4) with `./benchmark/perf.py`

Original Kernel (ms)
| (msa,res) | FWD(f32) | BWD(f32) | FWD(f16) | BWD(f16) |
|----------:|----------|----------|----------|----------|
| (128,256) | 14.448   | 34.007   | 9.178    | 19.141   |
| (256,384) | 39.494   | 90.060  | 26.771   | 55.182   |
| (128,512) | 69.865  | 137.231  | 45.479   | 89.836   |

Triton Kernel (ms)
| (msa,res) | FWD(f32) | BWD(f32) | FWD(f16) | BWD(f16) |
|----------:|----------|----------|----------|----------|
| (128,256) | 12.985   | 29.538   | 8.514    | 15.901   |
| (256,384) | 34.569   | 69.862  | 22.060   | 40.641   |
| (128,512) |52.014  | 100.500  | 32.980   | 61.886   |

### end-to-end inference performance 

test on A100 (SXM4) with T1050(779 residues). other setting: `--chunk_size 256 --inplace`

| original | triton |
| --------| ------|
| 82.2201s | 54.5724s |

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `b3af1957a304`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.