# Issue

**Title:** feat: Add RMSD and HbondAnalysis pipelines along with Python plot and environment files

## Description

This pull request significantly enhances the analysis and visualization capabilities of the `AutoTRJ` workflow, particularly for RMSD and hydrogen bond analyses. It introduces new RMSD calculation modes, advanced hydrogen bond analysis, a dedicated plotting script, and improved documentation and environment setup. These changes make trajectory analysis more comprehensive and user-friendly.

**Major new analysis features:**

* Added support for multiple RMSD analysis modes (`RMSD`, `RMSD_CA`, `RMSD_Backbone`, `LigandRMSD`) to compute and plot RMSD time-series for all protein atoms, C-alpha atoms, backbone atoms, and ligand (fitted to receptor), respectively. Each mode outputs a CSV and publication-quality plot, with optional total simulation time for accurate x-axis scaling. 

**Plotting and reporting improvements:**

* Added a new script `rmsd_plot.py` that generates high-quality RMSD time-series plots and summary statistics from CSV data, supporting flexible time axis scaling and outputting both PNG and PDF files.
* RMSD plotting now accepts a `-S`/`--total-time` parameter to accurately label the x-axis with simulation time in nanoseconds. 

**Documentation and usability:**

* Updated the `README.md` and help messages to document all new analysis modes and command-line options, ensuring users are aware of the expanded feature set.
* Added a `environment.yml` file for easy setup of Python dependencies required for plotting and standalone scripts, improving reproducibility and onboarding.

**Other improvements:**

* Minor adjustment to job control logic to ensure proper CPU host handling for use on single nodes. Can be ignored if we still wantto keep it optimized for HPC.

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `76fc6c70a979`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.