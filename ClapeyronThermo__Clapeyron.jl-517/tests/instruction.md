# Issue

**Title:** Fix DETPFlash reduced Gibbs scaling for GammaPhi/PTFlashWrapper

## Description

- Fix DETPFlash objective scaling: accumulate phase reduced Gibbs (G/RT) and normalize by total moles to return molar reduced Gibbs g = G/(nRT) in Obj_de_tp_flash.
  - Previously: GammaPhi/PTFlashWrapper path produced reduced Gibbs, but the objective applied an extra /RT, causing inconsistent g vs RRTPFlash/MichelsenTPFlash.
- Make __eval_G_DETPFlash(model::EoSModel, ...) return reduced Gibbs consistently (g/RT) to match PTFlashWrapper/GammaPhi path.
- Fix gammaphi_gibbs empty-phase return: always return (g, v) tuple for sum(w)==0 to avoid type/unwrap inconsistency.
- Refactor gammaphi_gibbs typing: introduce a single promoted eltype and reuse it for both g and v zeros.
- Add minimal SASS ask–tell usage example at top of sass_at.jl.

	modified:   src/methods/property_solvers/multicomponent/tp_flash/DifferentialEvolutiontp_flash.jl
	modified:   src/models/CompositeModel/GammaPhi.jl
	modified:   src/modules/solvers/metaheuristics/sass_at.jl
	modified:   test/test_methods_api_flash.jl

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `dc4b105f245b`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.