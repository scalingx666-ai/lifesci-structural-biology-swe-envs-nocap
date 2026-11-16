# Issue

**Title:** Compatible with pre-indexed db

## Description

`if [ -n "${TAXONOMY}" ]; then
    # shellcheck disable=SC2086
    "$MMSEQS" taxonomyreport "${TARGET}" "${INTERMEDIATE}" "${RESULTS}_report" ${TAXONOMYREPORT_PAR} \
        || fail "taxonomyreport died"
fi`

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `dd579d9e6682`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.