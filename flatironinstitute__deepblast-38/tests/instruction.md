# Issue

**Title:** Enabling full gpu run

## Description

This is a first attempt at getting an end-to-end GPU pipeline up and running.

It looks like the inputs are currently not agreeing with the GPU functions.  Below is the error message - not sure what is going on here, but perhaps we can discuss once all of the optimizations are in.

```
======================================================================
ERROR: test_trainer (__main__.TestTrainer)
----------------------------------------------------------------------
Traceback (most recent call last):
  File "test_trainer.py", line 72, in test_trainer
    trainer.fit(model)
  File "/mnt/home/jmorton/miniconda3/envs/alignment/lib/python3.8/site-packages/pytorch_lightning/trainer/trainer.py", line 979, in fit
    self.single_gpu_train(model)
  File "/mnt/home/jmorton/miniconda3/envs/alignment/lib/python3.8/site-packages/pytorch_lightning/trainer/distrib_parts.py", line 185, in single_gpu_train
    self.run_pretrain_routine(model)
  File "/mnt/home/jmorton/miniconda3/envs/alignment/lib/python3.8/site-packages/pytorch_lightning/trainer/trainer.py", line 1156, in run_pretrain_routine
    self.train()
  File "/mnt/home/jmorton/miniconda3/envs/alignment/lib/python3.8/site-packages/pytorch_lightning/trainer/training_loop.py", line 370, in train
    self.run_training_epoch()
  File "/mnt/home/jmorton/miniconda3/envs/alignment/lib/python3.8/site-packages/pytorch_lightning/trainer/training_loop.py", line 452, in run_training_epoch
    batch_output = self.run_training_batch(batch, batch_idx)
  File "/mnt/home/jmorton/miniconda3/envs/alignment/lib/python3.8/site-packages/pytorch_lightning/trainer/training_loop.py", line 626, in run_training_batch
    opt_closure_result = self.optimizer_closure(
  File "/mnt/home/jmorton/miniconda3/envs/alignment/lib/python3.8/site-packages/pytorch_lightning/trainer/training_loop.py", line 773, in optimizer_closure
    training_step_output = self.training_forward(split_batch, batch_idx, opt_idx,
  File "/mnt/home/jmorton/miniconda3/envs/alignment/lib/python3.8/site-packages/pytorch_lightning/trainer/training_loop.py", line 935, in training_forward
    output = self.model.training_step(*args)
  File "/mnt/home/jmorton/research/gert/deepblast/deepblast/trainer.py", line 79, in training_step
    predA = self.aligner(x, y)
  File "/mnt/home/jmorton/miniconda3/envs/alignment/lib/python3.8/site-packages/torch/nn/modules/module.py", line 550, in __call__
    result = self.forward(*input, **kwargs)
  File "/mnt/home/jmorton/research/gert/deepblast/deepblast/alignment.py", line 78, in forward
    aln = self.nw.decode(theta, A)
  File "/mnt/home/jmorton/research/gert/deepblast/deepblast/nw_cuda.py", line 320, in decode
    nll = self.forward(theta, A)
  File "/mnt/home/jmorton/research/gert/deepblast/deepblast/nw_cuda.py", line 279, in forward
    return NeedlemanWunschFunction.apply(theta, A, self.operator)
  File "/mnt/home/jmorton/research/gert/deepblast/deepblast/nw_cuda.py", line 185, in forward
    _forward_pass_kernel[tpb, bpg](d_theta, d_A, d_Q, d_Vt)
  File "/mnt/home/jmorton/miniconda3/envs/alignment/lib/python3.8/site-packages/numba/cuda/compiler.py", line 833, in __call__
    kernel = self.specialize(*args)
  File "/mnt/home/jmorton/miniconda3/envs/alignment/lib/python3.8/site-packages/numba/cuda/compiler.py", line 844, in specialize
    kernel = self.compile(argtypes)
  File "/mnt/home/jmorton/miniconda3/envs/alignment/lib/python3.8/site-packages/numba/cuda/compiler.py", line 859, in compile
    kernel = compile_kernel(self.py_func, argtypes,
  File "/mnt/home/jmorton/miniconda3/envs/alignment/lib/python3.8/site-packages/numba/core/compiler_lock.py", line 32, in _acquire_compile_lock
    return func(*args, **kwargs)
  File "/mnt/home/jmorton/miniconda3/envs/alignment/lib/python3.8/site-packages/numba/cuda/compiler.py", line 55, in compile_kernel
    cres = compile_cuda(pyfunc, types.void, args, debug=debug, inline=inline)
  File "/mnt/home/jmorton/miniconda3/envs/alignment/lib/python3.8/site-packages/numba/core/compiler_lock.py", line 32, in _acquire_compile_lock
    return func(*args, **kwargs)
  File "/mnt/home/jmorton/miniconda3/envs/alignment/lib/python3.8/site-packages/numba/cuda/compiler.py", line 38, in compile_cuda
    cres = compiler.compile_extra(typingctx=typingctx,
  File "/mnt/home/jmorton/miniconda3/envs/alignment/lib/python3.8/site-packages/numba/core/compiler.py", line 603, in compile_extra
    return pipeline.compile_extra(func)
  File "/mnt/home/jmorton/miniconda3/envs/alignment/lib/python3.8/site-packages/numba/core/compiler.py", line 339, in compile_extra
    return self._compile_bytecode()
  File "/mnt/home/jmorton/miniconda3/envs/alignment/lib/python3.8/site-packages/numba/core/compiler.py", line 401, in _compile_bytecode
    return self._compile_core()
  File "/mnt/home/jmorton/miniconda3/envs/alignment/lib/python3.8/site-packages/numba/core/compiler.py", line 381, in _compile_core
    raise e
  File "/mnt/home/jmorton/miniconda3/envs/alignment/lib/python3.8/site-packages/numba/core/compiler.py", line 372, in _compile_core
    pm.run(self.state)
  File "/mnt/home/jmorton/miniconda3/envs/alignment/lib/python3.8/site-packages/numba/core/compiler_machinery.py", line 341, in run
    raise patched_exception
  File "/mnt/home/jmorton/miniconda3/envs/alignment/lib/python3.8/site-packages/numba/core/compiler_machinery.py", line 332, in run
    self._runPass(idx, pass_inst, state)
  File "/mnt/home/jmorton/miniconda3/envs/alignment/lib/python3.8/site-packages/numba/core/compiler_lock.py", line 32, in _acquire_compile_lock
    return func(*args, **kwargs)
  File "/mnt/home/jmorton/miniconda3/envs/alignment/lib/python3.8/site-packages/numba/core/compiler_machinery.py", line 291, in _runPass
    mutated |= check(pss.run_pass, internal_state)
  File "/mnt/home/jmorton/miniconda3/envs/alignment/lib/python3.8/site-packages/numba/core/compiler_machinery.py", line 264, in check
    mangled = func(compiler_state)
  File "/mnt/home/jmorton/miniconda3/envs/alignment/lib/python3.8/site-packages/numba/core/typed_passes.py", line 92, in run_pass
    typemap, return_type, calltypes = type_inference_stage(
  File "/mnt/home/jmorton/miniconda3/envs/alignment/lib/python3.8/site-packages/numba/core/typed_passes.py", line 70, in type_inference_stage
    infer.propagate(raise_errors=raise_errors)
  File "/mnt/home/jmorton/miniconda3/envs/alignment/lib/python3.8/site-packages/numba/core/typeinfer.py", line 994, in propagate
    raise errors[0]
numba.core.errors.TypingError: Failed in nopython mode pipeline (step: nopython frontend)
No implementation of function Function(<numba.cuda.compiler.DeviceFunctionTemplate object at 0x2aab1dd2fe80>) found for signature:

 >>> _forward_pass_device <CUDA device function>(array(float32, 2d, C), array(float32, 1d, C), array(float32, 3d, C))

There are 2 candidate implementations:
  - Of which 2 did not match due to:
  Overload in function '_forward_pass_device <CUDA device function>': File: ../../../../../../research/gert/deepblast/deepblast/nw_cuda.py: Line 42.
    With argument(s): '(array(float32, 2d, C), array(float32, 1d, C), array(float32, 3d, C))':
   Rejected as the implementation raised a specific error:
     TypingError: Failed in nopython mode pipeline (step: nopython frontend)
   No implementation of function Function(<built-in function add>) found for signature:

    >>> add(array(float32, 1d, C), float32)

   There are 12 candidate implementations:
         - Of which 2 did not match due to:
         Operator Overload in function 'add': File: unknown: Line unknown.
           With argument(s): '(array(float32, 1d, C), float32)':
          No match for registered cases:
           * (int64, int64) -> int64
           * (int64, uint64) -> int64
           * (uint64, int64) -> int64
           * (uint64, uint64) -> uint64
           * (float32, float32) -> float32
           * (float64, float64) -> float64
           * (complex64, complex64) -> complex64
           * (complex128, complex128) -> complex128
         - Of which 10 did not match due to:
         Overload of function 'add': File: <numerous>: Line N/A.
           With argument(s): '(array(float32, 1d, C), float32)':
          No match.

   During: typing of intrinsic-call at /mnt/home/jmorton/research/gert/deepblast/deepblast/nw_cuda.py (57)

   File "../nw_cuda.py", line 57:
   def _forward_pass_device(theta, A, Q):
       <source elided>
           for j in range(1, M + 1):
               maxargs[0] = A + V[last, j]  # x
               ^

  raised from /mnt/home/jmorton/miniconda3/envs/alignment/lib/python3.8/site-packages/numba/core/typeinfer.py:994

During: resolving callee type: Function(<numba.cuda.compiler.DeviceFunctionTemplate object at 0x2aab1dd2fe80>)
During: typing of call at /mnt/home/jmorton/research/gert/deepblast/deepblast/nw_cuda.py (74)


File "../nw_cuda.py", line 74:
def _forward_pass_kernel(theta, A, Q, Vt):
    <source elided>
    if batchid < theta.shape[0]:
        Vt[batchid] = _forward_pass_device(theta[batchid], A[batchid],
        ^
```

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `1c16c4536eaf`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.