# Issue

**Title:** Re-organise friction types and code structure

## Description

# Goals
- For Adiabatic simulations: Clearer separation between friction methods (Diagonal and tensorial electronic friction) and MLIP interfaces to predict electronic friction. 
- Updated documentation pages and code comments to indicate unit requirements for electronic friction. 

# Concepts
## Unifying Adiabatic and Diabatic friction structure
```mermaid
flowchart TB
    DiabaticMDEF -.- FrictionEvaluationMethod
    subgraph NQCModels.jl
    NQCModels:::module --> AdiabaticModels:::module --> AdiabaticFrictionModel:::type
    NQCModels --> FrictionModels:::module
    NQCModels --> DiabaticModels:::module --> DiabaticFrictionModel:::type
    FrictionEvaluationMethod --friction!--> DiabaticFrictionModel:::type
    FrictionModels --> ElectronicFrictionProvider
    FrictionModels --> FrictionEvaluationMethod:::type
    subgraph ElectronicFrictionProvider
     DiagonalFriction:::function --> LDFAFriction:::function
     TensorialFriction:::function
    end
    subgraph FrictionEvaluationMethod
        WideBandExact:::function
        GaussianBroadening:::function
        ...:::function
    end
    ElectronicFrictionProvider:::type --friction!--> AdiabaticFrictionModel
    end
    subgraph NQCDynamics.jl
        DynamicsMethods:::module --> AbstractMDEF:::type
        AbstractMDEF --> MDEF:::function
        AbstractMDEF --> DiabaticMDEF:::function
    end

    linkStyle 0 stroke-width:8px,stroke:red;

classDef type fill:#4A2171,color:#fff
classDef module fill:#387D8A,color:#fff
classDef function fill:#D22E4E,color:#F2BE40
```

## Re-shuffling code between FrictionProviders.jl and NQCModels.jl for adiabatic friction
```mermaid
flowchart TB
    NQCModels
    e[ElectronicFrictionProvider]:::type
    DiagonalFriction:::type --> e
    TensorialFriction:::type --> e
    ElectronDensityProvider:::type --> density/density!:::function --> LDFAFriction
    e --> friction/friction!:::function --> NQCModels
    get_friction_matrix:::function --> TensorialFriction
    get_friction_matrix:::function --> DiagonalFriction
    LDFAFriction:::type --get_friction_matrix--> DiagonalFriction
    dmlip(Density MLIPs):::FP <--> ElectronDensityProvider
    FrictionProviders:::FP --> dmlip
    tmlip(Tensor/<:AbstractMatrix MLIPs):::FP <--> get_friction_matrix
    FrictionProviders --> tmlip


classDef type fill:#4A2171,color:#fff
classDef FP fill:#387D8A,color:#fff
classDef function fill:#D22E4E,color:#F2BE40
```

@Ash-Baldwin is working on the Diabatic side of this while I tackle the Adiabatic side. Our idea is to have a consistent implementation of calculating non-adiabatic coupling across Adiabatic and Diabatic methods. This will make things easier to understand for users, and allow friction evaluation outside of the dynamics workflow, which is currently very difficult for Diabatic models.

## Associated tasks
This has a bunch of associated issues and PRs for different packages. 

- [ ] Fix #384 
- [ ] Fix #378 
- [x]  
- [x] Depends on 
- [x] Fix 
- [x] Fix 
- [x] Fix 
- [x] Depends on

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `62aa5895afaa`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.