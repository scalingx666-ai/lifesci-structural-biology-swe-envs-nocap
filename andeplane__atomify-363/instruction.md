# Issue

**Title:** chore(deps): bump cryptography from 46.0.5 to 48.0.1 in /backend

## Description

Bumps [cryptography](https://github.com/pyca/cryptography) from 46.0.5 to 48.0.1.
<details>
<summary>Changelog</summary>
<p><em>Sourced from <a href="https://github.com/pyca/cryptography/blob/main/CHANGELOG.rst">cryptography's changelog</a>.</em></p>
<blockquote>
<p>48.0.1 - 2026-06-09</p>
<pre><code>
* Updated Windows, macOS, and Linux wheels to be compiled with OpenSSL 4.0.1.
<p>.. _v48-0-0:</p>
<p>48.0.0 - 2026-05-04<br />
</code></pre></p>
<ul>
<li>
<p><strong>BACKWARDS INCOMPATIBLE:</strong> Support for Python 3.8 has been removed.
<code>cryptography</code> now requires Python 3.9 or later.</p>
</li>
<li>
<p><strong>BACKWARDS INCOMPATIBLE:</strong> Loading an X.509 CRL whose inner
<code>TBSCertList.signature</code> algorithm does not match the outer
<code>signatureAlgorithm</code> now raises <code>ValueError</code>. Previously, such CRLs
were parsed successfully and only rejected during signature validation.</p>
</li>
<li>
<p>Added support for :doc:<code>/hazmat/primitives/asymmetric/mlkem</code> and
:doc:<code>/hazmat/primitives/asymmetric/mldsa</code> when using OpenSSL 3.5.0 or
later, in addition to the existing AWS-LC and BoringSSL support. This means
post-quantum algorithms are now available to users of our wheels.</p>
<ul>
<li><strong>Note:</strong> Going forward, we do not guarantee that all functionality
in <code>cryptography</code> will be available when building against
OpenSSL. See :doc:<code>/statements/state-of-openssl</code> for more information.</li>
</ul>
</li>
</ul>
<p>.. _v47-0-0:</p>
<p>47.0.0 - 2026-04-24</p>
<pre><code>
* Support for Python 3.8 is deprecated and will be removed in the next
  ``cryptography`` release.
* **BACKWARDS INCOMPATIBLE:** Support for binary elliptic curves
  (``SECT*`` classes) has been removed. These curves are rarely used and
  have additional security considerations that make them undesirable.
* **BACKWARDS INCOMPATIBLE:** Support for OpenSSL 1.1.x has been removed.
  OpenSSL 3.0.0 or later is now required. LibreSSL, BoringSSL, and AWS-LC
  continue to be supported.
* **BACKWARDS INCOMPATIBLE:** Dropped support for LibreSSL &lt; 4.1.
* **BACKWARDS INCOMPATIBLE:** Loading keys with unsupported algorithms or
  keys with unsupported explicit curve encodings now raises
  :class:`~cryptography.exceptions.UnsupportedAlgorithm` instead of
  ``ValueError``. This change affects
  :func:`~cryptography.hazmat.primitives.serialization.load_pem_private_key`,
  :func:`~cryptography.hazmat.primitives.serialization.load_der_private_key`,
  :func:`~cryptography.hazmat.primitives.serialization.load_pem_public_key`,
  :func:`~cryptography.hazmat.primitives.serialization.load_der_public_key`,
  and :meth:`~cryptography.x509.Certificate.public_key` when called on
  certificates with unsupported public key algorithms.
&lt;/tr&gt;&lt;/table&gt;
</code></pre>
</blockquote>
<p>... (truncated)</p>
</details>
<details>
<summary>Commits</summary>
<ul>
<li><a href=""><code>de987ce</code></a> 48.0.1 version bump and changelog (<a href="">#14996</a>)</li>
<li><a href=""><code>8e03e30</code></a> bump for 48.0.0 release (<a href="">#14796</a>)</li>
<li><a href=""><code>295e0d2</code></a> Add AGENTS.md with CLAUDE.md symlink (<a href="">#14794</a>)</li>
<li><a href=""><code>104a2de</code></a> Bump BoringSSL, OpenSSL, AWS-LC in CI (<a href="">#14793</a>)</li>
<li><a href=""><code>67ec1e5</code></a> call check_length early on AesSiv::encrypt (<a href="">#14792</a>)</li>
<li><a href=""><code>b2da57a</code></a> changelog for mldsa/mlkem for openssl (<a href="">#14791</a>)</li>
<li><a href=""><code>3cf44ad</code></a> ML-KEM OpenSSL support (<a href="">#14781</a>)</li>
<li><a href=""><code>2e31639</code></a> ML-DSA OpenSSL support (<a href="">#14773</a>)</li>
<li><a href=""><code>5affe5a</code></a> fix rust nightly clippy (<a href="">#14790</a>)</li>
<li><a href=""><code>2e73ca4</code></a> bump rust-openssl dep and update EcPoint::mul_generator to mul_generator2 (<a href="">#1</a>...</li>
<li>Additional commits viewable in <a href="https://github.com/pyca/cryptography/compare/46.0.5...48.0.1">compare view</a></li>
</ul>
</details>
<br />

[![Dependabot compatibility score](https://dependabot-badges.githubapp.com/badges/compatibility_score?dependency-name=cryptography&package-manager=uv&previous-version=46.0.5&new-version=48.0.1)](https://docs.github.com/en/github/managing-security-vulnerabilities/about-dependabot-security-updates#about-compatibility-scores)

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

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `74bd12a73e30`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.