# Issue

**Title:** chore(deps): bump cryptography from 48.0.1 to 50.0.0 in /backend

## Description

Bumps [cryptography](https://github.com/pyca/cryptography) from 48.0.1 to 50.0.0.
<details>
<summary>Changelog</summary>
<p><em>Sourced from <a href="https://github.com/pyca/cryptography/blob/main/CHANGELOG.rst">cryptography's changelog</a>.</em></p>
<blockquote>
<p>50.0.0 - 2026-07-31</p>
<pre><code>
* **SECURITY ISSUE**:
  :func:`~cryptography.hazmat.primitives.serialization.pkcs7.pkcs7_decrypt_der`
  and its PEM and S/MIME variants no longer expose distinguishable errors or
  timing when unwrapping a ``RecipientInfo``'s ``encryptedKey``, which could
  act as a Bleichenbacher oracle for callers that decrypt untrusted messages.
  A random key is now substituted on failure, as described in :rfc:`3218`.
  Credit to **@X1AOxiang** for reporting the issue. **CVE-2026-69247**
* Deprecated Diffie-Hellman key exchange over finite fields (FFDH).
  Everything FFDH is deprecated, including the types in
  ``cryptography.hazmat.primitives.asymmetric.dh`` and loading FFDH keys or
  parameters with the key loading APIs. Users should migrate to a more
  modern key exchange algorithm.
* Added ``xof()`` class methods to
  :class:`~cryptography.hazmat.primitives.hashes.SHAKE128` and
  :class:`~cryptography.hazmat.primitives.hashes.SHAKE256` for constructing
  algorithm instances configured for use with
  :class:`~cryptography.hazmat.primitives.hashes.XOFHash`.
* The :mod:`X.509 verification &lt;cryptography.x509.verification&gt;` APIs are now
  considered stable and are subject to our API stability policy.
* Added the :doc:`/cobblestone` recipe, an implementation of the
  Cobblestone-128 and Cobblestone-256 instantiations of the `C2SP
  chunked-encryption specification
  &lt;https://c2sp.org/chunked-encryption&gt;`_ for streaming authenticated
  encryption of large messages.
* Parsing a Signed Certificate Timestamp list now rejects encodings that
  carry trailing bytes after the list or after an individual SCT, instead of
  silently ignoring them.
* Added support for using :class:`~cryptography.x509.Name` as a field type in
  the :doc:`/hazmat/asn1/index` module.
* Loading a public key or an EC private key now rejects DER where the
  ``subjectPublicKey`` (or EC ``publicKey``) ``BIT STRING`` declares a non-zero
  number of unused bits, instead of silently ignoring it.
* Parsing a CRL entry's ``InvalidityDate`` extension now rejects a
  ``GeneralizedTime`` that carries fractional seconds or another non-DER form,
  matching the strict encoding already required for every other X.509 time
  field.
* :func:`~cryptography.x509.ocsp.load_der_ocsp_request` and
  :func:`~cryptography.x509.ocsp.load_der_ocsp_response` now reject a request
  or response whose ``version`` field is not ``v1``, the only version defined
  by RFC 6960, matching the version validation already performed when loading
  certificates, CSRs and CRLs.
* :class:`~cryptography.hazmat.primitives.hashes.XOFHash` is now supported
  when building against AWS-LC.
* HMAC (and therefore PBKDF2-HMAC) with SHA-3 hashes is now supported when
  building against AWS-LC.
* Diffie-Hellman (:doc:`/hazmat/primitives/asymmetric/dh`) is now supported
  when building against AWS-LC.
&lt;/tr&gt;&lt;/table&gt;
</code></pre>
</blockquote>
<p>... (truncated)</p>
</details>
<details>
<summary>Commits</summary>
<ul>
<li><a href=""><code>dcb7050</code></a> Prepare for 50.0.0 release (<a href="">#15372</a>)</li>
<li><a href=""><code>53fccd9</code></a> Don't leak how PKCS#7 encryptedKey decryption failed (<a href="">#15369</a>)</li>
<li><a href=""><code>d472f97</code></a> Add <code>from __future__ import annotations</code> to all src/ Python files (<a href="">#15371</a>)</li>
<li><a href=""><code>908773d</code></a> Bump downstream dependencies in CI (<a href="">#15368</a>)</li>
<li><a href=""><code>2cc07cc</code></a> Bump BoringSSL, OpenSSL, AWS-LC in CI (<a href="">#15367</a>)</li>
<li><a href=""><code>c94ede9</code></a> chore(deps): bump ruff from 0.16.0 to 0.16.1 (<a href="">#15366</a>)</li>
<li><a href=""><code>67a8308</code></a> chore(deps): bump virtualenv from 21.7.0 to 21.7.1 (<a href="">#15365</a>)</li>
<li><a href=""><code>95018ff</code></a> Release the GIL in one-shot AEAD encrypt/decrypt (<a href="">#15361</a>)</li>
<li><a href=""><code>6954733</code></a> Release the GIL during DH and DSA parameter generation (<a href="">#15364</a>)</li>
<li><a href=""><code>6893b94</code></a> Import _serialization instead of serialization in x509/extensions (<a href="">#15363</a>)</li>
<li>Additional commits viewable in <a href="https://github.com/pyca/cryptography/compare/48.0.1...50.0.0">compare view</a></li>
</ul>
</details>
<br />

[![Dependabot compatibility score](https://dependabot-badges.githubapp.com/badges/compatibility_score?dependency-name=cryptography&package-manager=uv&previous-version=48.0.1&new-version=50.0.0)](https://docs.github.com/en/github/managing-security-vulnerabilities/about-dependabot-security-updates#about-compatibility-scores)

Dependabot will resolve any conflicts with this PR as long as you don't alter it yourself. You can also trigger a rebase manually by commenting `@dependabot rebase`.

[//]: # (dependabot-automerge-start)
[//]: # (dependabot-automerge-end)

---

<details>
<summary>Dependabot commands and options</summary>
<br />

You can trigger Dependabot actions by commenting on this PR:
- `@dependabot rebase` will rebase this PR
- `@dependabot recreate` will recreate this PR, overwriting any edits that have been made to it
- `@dependabot show <dependency name> ignore conditions` will show all of the ignore conditions of the specified dependency
- `@dependabot ignore this major version` will close this PR and stop Dependabot creating any more for this major version (unless you reopen the PR or upgrade to it yourself)
- `@dependabot ignore this minor version` will close this PR and stop Dependabot creating any more for this minor version (unless you reopen the PR or upgrade to it yourself)
- `@dependabot ignore this dependency` will close this PR and stop Dependabot creating any more for this dependency (unless you reopen the PR or upgrade to it yourself)
You can disable automated security fix PRs for this repo from the [Security Alerts page](https://github.com/andeplane/atomify/network/alerts).

</details>

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `766e9ebce292`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.