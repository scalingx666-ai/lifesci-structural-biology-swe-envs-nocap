# Issue

**Title:** Improve GitHub Actions workflows

## Description

Hi @Adanos020,

I took a little bit of time to fiddle with the GitHub action workflow. 

- I noticed a lot of parallel jobs were created which improves parallelism, however it prevents cargo commands to leverage build artifacts between steps and forces all jobs to pull and compile the dependencies separately. So I regrouped the different jobs in one which executes faster (and uses less runner minutes (even if we don't care for open source)).
- I also noticed that we were running Miri on all platforms which seems a bit overkill and takes a lot of time! So I created a job targeting linux for that. Since (I don't think) this repo will need unsafe I think this change is pretty safe. I added the **#[forbid(unsafe_code)]** feature to ensure that.
- To reduce code repeat between OSs, I also used the [matrix](https://docs.github.com/en/actions/using-jobs/using-a-matrix-for-your-jobs) feature of GitHub.
- I used [action-rs](https://github.com/actions-rs) every where.
- Finally I added a [cargo cache](https://github.com/Swatinem/rust-cache) step to improve build times (egui repo uses it as well).

Overall the time between push and result is now 5-6 minutes, where it took ~8 minutes before.

Tell me what you think!

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `17ace82c6fd1`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.