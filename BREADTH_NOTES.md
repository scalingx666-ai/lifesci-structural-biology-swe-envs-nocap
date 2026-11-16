# Build notes - Structural Biology & Proteins

Repo2RLEnv pr_diff (v0.9.6), Harbor-format output. Domain: structural-biology.

## Funnel

| Stage | Count |
|---|---|
| Domain candidates (deduped) | 634 |
| After active+star+noise filter | 308 |
| Final target list (cap unlimited) | 308 |
| Repos with >=1 task | 123 |
| Repos with 0 tasks | 29 |
| Total tasks (unlimited (no per-repo cap)) | 4144 |

## Generation

- Shared task bank: each repo generated once (pr_diff, limit=3,
  max_files_per_pr=15, min_loc_changed=2), 4-way concurrency,
  rate-limit-aware with .done checkpoint resume.
- Per-domain consolidation: rank by reward_calibration.loc_changed desc,
  keep ALL qualifying tasks (no per-repo cap). Zero-yield repos are NOT fabricated.
- Overlap with the 3 published cancer editions is allowed (user decision);
  domains are independent selections, not a partition of one repo set.

## Zero-yield repos (informational, 29)

- ergrelet/windiff
- NVIDIA-BioNeMo/la-proteina
- zaixizhang/PocketGen
- bjing2016/mdgen
- lsj2408/Transformer-M
- lbcb-sci/RiNALMo
- bjing2016/EigenFold
- Zuricho/ParallelFold
- QizhiPei/FABind
- Air14/SymbolicAccess
- Genentech/equifold
- ml4bio/Dense-Homolog-Retrieval
- CharlesHahn/DuIvyTools
- LucaAngioloni/ProteinSecondaryStructure-CNN
- alibaba/graph-gpt
- GENTEL-lab/Fold2Reason
- drorlab/DIPS
- beikwx/SailVina
- psipred/protein-vae
- DeepGraphLearning/DiffPack
- lujiarui/esmdiff
- patrickbryant1/Cfold
- Hrishikesh332/ExPro-Explore-Protein-3D
- TheVisualHub/RoyalMD
- yesint/molar
- PointSite/PointSite
- tiejundong/FlexPose
- Model3DBio/AlphaFold3-Conda-Install
- nvelden/NGLVieweR

## Caveats

- Static validation only; real grading needs an LLM judge key + Docker.
- inline_dockerfile mode skips image build (no Docker daemon needed to publish).
- Provider secrets in upstream diffs were redacted before public release.
