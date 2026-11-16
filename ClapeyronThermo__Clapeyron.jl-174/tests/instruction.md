# Issue

**Title:** revamp kwarg and dispatch handling for methods (NFC)

## Description

we now call a new function `init_preferred_method(method,model,kwargs)` to initialize a method. this helps specially in the cases where we need to define another methods for specific models (activity, composite models), while not interfering with the default args, and even expanding those. julia kwarg handling has improved, so using kwargs does not cause performance penalties like before. now we can do:
```
saturation_pressure(model,T,vl = 1.8e-5,vv = 0.03) #init_preferred_method(saturation_pressure,model::EoSModel,kwargs) = ChemPotVSaturation(;kwargs...)

tp_flash(model,p,T,z,equilibrium = :vle) #dispatch to MichelsenTPFlash
tp_flash(model,p,T,z) DETPFlash
tp_flash(activity_model,p,T,z) #RRTPFlash
tp_flash(activity_model,p,T,z,equilibrium = :vle) #RRTPFlash
```
all this while not touching any methods.
should solve "bubble_temperature no longer takes T0 as an initial guess for activity coefficient models" (#173)

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `e6a31f67948d`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.