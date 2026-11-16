# Issue

**Title:** adding xpu support

## Description

This pull request adds support for Intel XPU devices to the codebase, ensuring that device selection and synchronisation logic now handle Intel XPU hardware alongside CUDA and Apple MPS. The changes affect both the device synchronisation utility and the device selection logic in two key functions.

## Decreased runtime

The elapsed time taken to annotate the NC_043029 test genome in `tests/test-data` decreased from 227 seconds to 36 seconds using the XPU implementation. 

## Autotune

Autotune has also been patched and on my Intel ARC Lunar Lake the 0ptimal batch size is 251 (residues per batch 54518)

## Known issues

### 1. Limited foldseek support

[Foldseek](https://github.com/steineggerlab/foldseek#installation) supports some GPUs but does not support Intel® ARC XPUs, therefore you can not use the `--foldseek-gpu` option.

### 2. Phold hangs upon completion

There is an issue where tearing down the XPU currently hangs. I am not sure if it is WSL2, the [graphics driver](https://www.intel.com/content/www/us/en/download/785597/intel-arc-graphics-windows.html) [I'm currently using version 32.0.101.8132] or [pytorch](https://docs.pytorch.org/docs/2.12/notes/get_start_xpu.html) [I'm currently using version 2.11.0], however, neither of these can be fixed by phold! 

I will update this thread when I find a fixed version, but I can't update my Intel®drivers at the moment.

In the meantime, this minimal code block recapitulates the hang, demonstrating it is not a Phold issue, but something to be aware of. 

```bash
python - <<'PY'
import torch, gc
a = torch.ones((10, 10), device="xpu")
torch.xpu.synchronize()
print(a[0, 0].cpu(), flush=True)
del a
gc.collect()
torch.xpu.empty_cache()
torch.xpu.synchronize()
print("done", flush=True)
PY
```

If your device hangs, open powershell and enter:

```
wsl --shutdown
```

to reboot the WSL2 instance (the results are all saved).

## Device support enhancements:

* Updated `device_synchronize` in `src/phold/features/autotune.py` to include synchronisation for Intel XPU devices using `torch.xpu. synchronise (device)`, and changed MPS synchronisation to use the device argument.
* Modified device selection logic in both `autotune_batching_real_data` (`src/phold/features/autotune.py`) and `get_T5_model` (`src/phold/features/predict_3Di.py`) to check for Intel XPU availability and set the device accordingly. [[1]](diffhunk://#diff-c9d3fafae947e000ef5ab5aa8d515435000a6d0f75ead825bb17696a43947d9aR87-R90) [[2]](diffhunk://#diff-472e2e1819ac7ac1dc80ca166d3720f9c1a12803a92ee29f306fd384aae13ed7R111-R114)

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `a4ca4696d34d`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.