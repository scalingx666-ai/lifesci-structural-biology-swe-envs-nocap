# Issue

**Title:** Add qr build option for numerically stable GAP fitting

## Description

Summary

  Add a new meson build option qr (default: true) that enables the -DHAVE_QR compiler flag.
  This activates the QR decomposition solve path in gp_predict.F90, which is numerically stable
   for ill-conditioned kernel matrices that cause Cholesky (dpotrf) to fail with
  LA_Matrix_Factorise: cannot factorise.

  Problem

  gap_fit routinely crashes with LA_Matrix_Factorise: cannot factorise, error: 8/9 when fitting
   SOAP descriptors with moderate sparse point counts (500–2000). The Cholesky factorization of
   the kernel matrix Q = C_MM + C_MN * Λ⁻¹ * C_NM fails when Q is ill-conditioned. This is a
  known issue — .

  The only documented workaround (sparse_jitter) does not reliably fix it. I tested 4
  combinations of sparse_jitter (1e-10 to 1e-2), zeta (2–4), n_sparse (500–2000), and
  default_sigma — all crashed at the same point.

  Solution

  QUIP already contains a complete QR decomposition solve path in src/GAP/gp_predict.F90 (lines
   782–905), gated behind #ifdef HAVE_QR. This path reformulates the system as a tall
  least-squares problem solved via LAPACK's dgeqrf, which is numerically stable for
  ill-conditioned matrices. The required LAPACK routines are already provided by
  OpenBLAS/LAPACK.

  This PR adds a meson build option to enable it, following the existing pattern of gap and mpi
   options:

  # meson.options
  option('qr', type: 'boolean', value: true, description: 'Use QR decomposition for numerically
   stable GAP fitting (requires GAP)')

  Usage

  # Default (QR enabled)
  meson setup builddir -Dgap=true

  # Explicitly disable QR (old Cholesky behavior)
  meson setup builddir -Dgap=true -Dqr=false

  Test Results

  Cu FCC, 108-atom supercell, 350 training frames, SOAP cutoff=5.28 Å:

  Before (Cholesky): SYSTEM ABORT: LA_Matrix_Factorise: cannot factorise, error: 9 — crashed on
   every attempt.

  After (QR, -Dqr=true):

  ┌─────────────────┬──────────────────────┬───────────────────────┐
  │                 │ n_sparse=500, zeta=2 │ n_sparse=2000, zeta=4 │
  ├─────────────────┼──────────────────────┼───────────────────────┤
  │ SOAP covariance │ 26 min               │ 101 min               │
  ├─────────────────┼──────────────────────┼───────────────────────┤
  │ QR solve        │ 1 sec                │ 7 sec                 │
  ├─────────────────┼──────────────────────┼───────────────────────┤
  │ Result          │ ✅ Success           │ ✅ Success            │
  ├─────────────────┼──────────────────────┼───────────────────────┤
  │ Energy RMSE     │ —                    │ 2.5 meV/atom          │
  ├─────────────────┼──────────────────────┼───────────────────────┤
  │ Force RMSE      │ —                    │ 0.25 eV/Å             │
  └─────────────────┴──────────────────────┴───────────────────────┘

  Log output confirms: Using LAPACK to solve QR

  Changes

  - meson.options: Add qr boolean option (default true)
  - meson.build: Conditionally add -DHAVE_QR when qr=true and gap=true

  2 files changed, 7 insertions, 2 deletions. No Fortran source changes — the QR code path
  already exists.

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `e5de082e4ba9`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.