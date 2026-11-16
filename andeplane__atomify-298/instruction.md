# Issue

**Title:** chore(deps): bump cryptography from 46.0.3 to 46.0.5 in /backend

## Description

Bumps [cryptography](https://github.com/pyca/cryptography) from 46.0.3 to 46.0.5.
<details>
<summary>Changelog</summary>
<p><em>Sourced from <a href="https://github.com/pyca/cryptography/blob/main/CHANGELOG.rst">cryptography's changelog</a>.</em></p>
<blockquote>
<p>46.0.5 - 2026-02-10</p>
<pre><code>
* An attacker could create a malicious public key that reveals portions of your
  private key when using certain uncommon elliptic curves (binary curves).
  This version now includes additional security checks to prevent this attack.
  This issue only affects binary elliptic curves, which are rarely used in
  real-world applications. Credit to **XlabAI Team of Tencent Xuanwu Lab and
  Atuin Automated Vulnerability Discovery Engine** for reporting the issue.
  **CVE-2026-26007**
* Support for ``SECT*`` binary elliptic curves is deprecated and will be
  removed in the next release.
<p>.. v46-0-4:</p>
<p>46.0.4 - 2026-01-27<br />
</code></pre></p>
<ul>
<li><code>Dropped support for win_arm64 wheels</code>_.</li>
<li>Updated Windows, macOS, and Linux wheels to be compiled with OpenSSL 3.5.5.</li>
</ul>
<p>.. _v46-0-3:</p>
</blockquote>
</details>
<details>
<summary>Commits</summary>
<ul>
<li><a href=""><code>06e120e</code></a> bump version for 46.0.5 release (<a href="">#14289</a>)</li>
<li><a href=""><code>0eebb9d</code></a> EC check key on cofactor &gt; 1 (<a href="">#14287</a>)</li>
<li><a href=""><code>bedf6e1</code></a> fix openssl version on 46 branch (<a href="">#14220</a>)</li>
<li><a href=""><code>e6f44fc</code></a> bump for 46.0.4 and drop win arm64 due to CI issues (<a href="">#14217</a>)</li>
<li>See full diff in <a href="https://github.com/pyca/cryptography/compare/46.0.3...46.0.5">compare view</a></li>
</ul>
</details>
<br />

[![Dependabot compatibility score](https://dependabot-badges.githubapp.com/badges/compatibility_score?dependency-name=cryptography&package-manager=uv&previous-version=46.0.3&new-version=46.0.5)](https://docs.github.com/en/github/managing-security-vulnerabilities/about-dependabot-security-updates#about-compatibility-scores)

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

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `bb5bbe9f6f51`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.