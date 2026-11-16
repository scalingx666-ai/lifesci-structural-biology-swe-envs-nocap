# Issue

**Title:** Devel

## Description

# Summary

This PR refactors and extends the flexible alignment (`flexalign`) engine in **US-align**.

The main changes include:

* Unified flexible structure alignment under the **`-mm 7`** option.
* Introduced **`FLEX_BEST`** as the default flexible alignment mode.
* Added the optional **USBCAT** (**US-align Based on FATCAT**) workflow enabled via **`-afp`**.
* Added support for the **`-hinge`** command-line option for user-controlled hinge constraints.

---

# Key Features & Implementation Details

## 1. Standard Flexible Alignment (`-mm 7`)

Running **`-mm 7`** without **`-afp`** performs flexible alignment using **`FLEX_BEST`** mode (`flexalign_greedy`).

### Automatic Secondary-Structure Optimization

The alignment is performed using both secondary-structure configurations (`ss_opt = 0` and `ss_opt = 1`), and the alignment with the higher TM-score is retained automatically.

---

## 2. USBCAT Flexible Alignment (`-mm 7 -afp`)

Using **`-afp`** together with **`-mm 7`** enables **`FLEX_USBCAT`**, which invokes `flexalign_usbcat` / `flexalign_usbcat_main`.

USBCAT combines topology-based flexible segmentation with the standard US-align TM-score optimization through the following workflow.

### Baseline Alignment

A baseline alignment is first computed using `flexalign_greedy` under both secondary-structure configurations (`ss_opt = 0` and `ss_opt = 1`). The best TM-score is stored as `best_global_max_TM`.

### Early Exit

If the baseline alignment already satisfies

```text
best_global_max_TM >= 0.85
```

the baseline result is accepted directly and the remaining USBCAT pipeline is skipped.

---

### AFP Generation and Search-Space Pruning

During AFP generation in `generate_bounds`, `best_global_max_TM` provides an alignment-score baseline for pruning the search space.

Candidate regions whose upper-bound alignment length (`d3_term`) cannot exceed

```text
best_global_max_TM * min(xlen, ylen)
```

are discarded before Kabsch fitting and distance evaluation, reducing unnecessary computations.

---

### Distance Precalculation

Intra-protein distance matrices (`disTable1` and `disTable2`) are precomputed within a sliding window (`max_dist_window`) to accelerate repeated dRMSD calculations during AFP evaluation.

---

### AFP Seed Optimization (`fragLen = 12`)

Initial AFPs are generated using Kabsch superposition with

```cpp
int fragLen = 12;
```

Using a longer seed fragment reduces noisy candidate AFPs during the initial search and decreases the number of candidates processed in subsequent chaining and domain splitting.

Adjacent AFPs located along the same alignment diagonal are subsequently merged.

---

### Dynamic Programming and Domain Splitting

AFP chaining and domain partitioning are performed using the dual dynamic programming procedure implemented in `generate_bounds`.

The optimization considers gap, twist, and RMSD penalty terms to identify geometrically consistent hinge positions and structural domains.

---

### Block Refinement with US-align

The resulting structural blocks are refined using the standard US-align optimization (`execute_flexalign_with_fallback`).

The optimized local alignments are then assembled into the final flexible alignment.

---

## 3. Hinge Control

The command-line parser has been updated to support the **`-hinge`** option.

A corresponding internal flag (`hinge_set`) is introduced to distinguish user-specified hinge limits from the default value (`hinge_opt = 9`) during multi-block alignment.

---

# Command-Line Usage

```bash
# Standard flexible alignment (FLEX_BEST)
USalign protein1.pdb protein2.pdb -mm 7

# Flexible alignment using the USBCAT workflow
USalign protein1.pdb protein2.pdb -mm 7 -afp

# USBCAT with a user-defined maximum hinge count
USalign protein1.pdb protein2.pdb -mm 7 -afp -hinge 5
```

> **Note:** The `-afp` option is effective only when used together with `-mm 7`.

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `93b6349ebe5b`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.