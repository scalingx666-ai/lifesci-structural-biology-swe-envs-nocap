# Issue

**Title:** fix `setup_databases.sh` script silently continuing despite errors

## Description

The `setup_databases.sh`  script may execute a command returning an error but the script would still continue, despite its intended design to stop  on any error.
The offending line is here: https://github.com/sokrypton/ColabFold/blob/b93680f62a305951cb7aa402903b34f595a6156a/setup_databases.sh#L23
`set +e` disables error checking but never turns it back on if download succeeded.
For example, the script may continue despite `mmseqs` being absent from the system or the wrong version is used, where `mmseqs` command(s) may silently not be properly executed, resulting in an incomplete database.
This PR restores correct behavior.

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `96fe2446f454`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.