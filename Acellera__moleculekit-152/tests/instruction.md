# Issue

**Title:** Bump body-parser from 2.2.2 to 2.3.0 in /viewer-frontend

## Description

Bumps [body-parser](https://github.com/expressjs/body-parser) from 2.2.2 to 2.3.0.
<details>
<summary>Release notes</summary>
<p><em>Sourced from <a href="https://github.com/expressjs/body-parser/releases">body-parser's releases</a>.</em></p>
<blockquote>
<h2>v2.3.0</h2>
<h2>Important: Security</h2>
<ul>
<li>Security fix for <a href="https://www.cve.org/CVERecord?id=CVE-2025-13466">CVE-2026-12590</a> (<a href="https://github.com/expressjs/body-parser/security/advisories/GHSA-v422-hmwv-36x6">GHSA-v422-hmwv-36x6</a>)</li>
</ul>
<h2>What's Changed</h2>
<ul>
<li>build(deps): bump actions/download-artifact from 6.0.0 to 7.0.0 by <a href="https://github.com/dependabot"><code>@​dependabot</code></a>[bot] in <a href="">expressjs/body-parser#681</a></li>
<li>build(deps): bump actions/checkout from 5.0.0 to 6.0.1 by <a href="https://github.com/dependabot"><code>@​dependabot</code></a>[bot] in <a href="">expressjs/body-parser#682</a></li>
<li>build(deps): bump actions/setup-node from 6.0.0 to 6.1.0 by <a href="https://github.com/dependabot"><code>@​dependabot</code></a>[bot] in <a href="">expressjs/body-parser#683</a></li>
<li>build(deps): bump actions/upload-artifact from 5.0.0 to 6.0.0 by <a href="https://github.com/dependabot"><code>@​dependabot</code></a>[bot] in <a href="">expressjs/body-parser#685</a></li>
<li>build(deps): bump github/codeql-action from 4.31.2 to 4.31.9 by <a href="https://github.com/dependabot"><code>@​dependabot</code></a>[bot] in <a href="">expressjs/body-parser#684</a></li>
<li>perf(urlencoded): move empty-body guard to avoid extra function closure by <a href="https://github.com/Phillip9587"><code>@​Phillip9587</code></a> in <a href="">expressjs/body-parser#647</a></li>
<li>Improve ESM compatibility by <a href="https://github.com/Phillip9587"><code>@​Phillip9587</code></a> in <a href="">expressjs/body-parser#697</a></li>
<li>docs: add recommendations for configuring payload limits by <a href="https://github.com/bjohansebas"><code>@​bjohansebas</code></a> in <a href="">expressjs/body-parser#699</a></li>
<li>build(deps): bump actions/setup-node from 6.1.0 to 6.2.0 by <a href="https://github.com/dependabot"><code>@​dependabot</code></a>[bot] in <a href="">expressjs/body-parser#701</a></li>
<li>build(deps): bump github/codeql-action from 4.31.10 to 4.32.0 by <a href="https://github.com/dependabot"><code>@​dependabot</code></a>[bot] in <a href="">expressjs/body-parser#702</a></li>
<li>build(deps): bump actions/checkout from 6.0.1 to 6.0.2 by <a href="https://github.com/dependabot"><code>@​dependabot</code></a>[bot] in <a href="">expressjs/body-parser#700</a></li>
<li>chore:  add explicit type commonjs to package.json by <a href="https://github.com/Phillip9587"><code>@​Phillip9587</code></a> in <a href="">expressjs/body-parser#711</a></li>
<li>deps: update dependencies to latest versions by <a href="https://github.com/Phillip9587"><code>@​Phillip9587</code></a> in <a href="">expressjs/body-parser#708</a></li>
<li>build(deps): bump actions/download-artifact from 7.0.0 to 8.0.0 by <a href="https://github.com/dependabot"><code>@​dependabot</code></a>[bot] in <a href="">expressjs/body-parser#712</a></li>
<li>build(deps): bump github/codeql-action from 4.32.0 to 4.32.4 by <a href="https://github.com/dependabot"><code>@​dependabot</code></a>[bot] in <a href="">expressjs/body-parser#713</a></li>
<li>build(deps): bump actions/upload-artifact from 6.0.0 to 7.0.0 by <a href="https://github.com/dependabot"><code>@​dependabot</code></a>[bot] in <a href="">expressjs/body-parser#714</a></li>
<li>fix: improve limit option validation by <a href="https://github.com/Phillip9587"><code>@​Phillip9587</code></a> in <a href="">expressjs/body-parser#698</a></li>
<li>build(deps): bump github/codeql-action from 4.32.4 to 4.35.1 by <a href="https://github.com/dependabot"><code>@​dependabot</code></a>[bot] in <a href="">expressjs/body-parser#719</a></li>
<li>build(deps): bump actions/setup-node from 6.2.0 to 6.3.0 by <a href="https://github.com/dependabot"><code>@​dependabot</code></a>[bot] in <a href="">expressjs/body-parser#718</a></li>
<li>build(deps): bump actions/download-artifact from 8.0.0 to 8.0.1 by <a href="https://github.com/dependabot"><code>@​dependabot</code></a>[bot] in <a href="">expressjs/body-parser#717</a></li>
<li>perf: eliminate conditional check in json strict mode hot path by <a href="https://github.com/Phillip9587"><code>@​Phillip9587</code></a> in <a href="">expressjs/body-parser#651</a></li>
<li>ci: add node.js 26 to text matrix by <a href="https://github.com/Phillip9587"><code>@​Phillip9587</code></a> in <a href="">expressjs/body-parser#726</a></li>
<li>build(deps): bump actions/setup-node from 6.3.0 to 6.4.0 by <a href="https://github.com/dependabot"><code>@​dependabot</code></a>[bot] in <a href="">expressjs/body-parser#725</a></li>
<li>build(deps): bump actions/upload-artifact from 7.0.0 to 7.0.1 by <a href="https://github.com/dependabot"><code>@​dependabot</code></a>[bot] in <a href="">expressjs/body-parser#724</a></li>
<li>build(deps): bump github/codeql-action from 4.35.1 to 4.35.3 by <a href="https://github.com/dependabot"><code>@​dependabot</code></a>[bot] in <a href="">expressjs/body-parser#723</a></li>
<li>Upgrade &quot;content-type&quot; by <a href="https://github.com/blakeembrey"><code>@​blakeembrey</code></a> in <a href="">expressjs/body-parser#728</a></li>
<li>refactor: switch to const/let and enable eslint no-var rule by <a href="https://github.com/Phillip9587"><code>@​Phillip9587</code></a> in <a href="">expressjs/body-parser#729</a></li>
<li>Update outdated reference to MDN docs by <a href="https://github.com/krzysdz"><code>@​krzysdz</code></a> in <a href="">expressjs/body-parser#730</a></li>
<li>build(deps): bump github/codeql-action from 4.35.3 to 4.36.1 by <a href="https://github.com/dependabot"><code>@​dependabot</code></a>[bot] in <a href="">expressjs/body-parser#731</a></li>
<li>build(deps): bump actions/checkout from 6.0.2 to 6.0.3 by <a href="https://github.com/dependabot"><code>@​dependabot</code></a>[bot] in <a href="">expressjs/body-parser#732</a></li>
<li>chore: updated deps to latest by <a href="https://github.com/Phillip9587"><code>@​Phillip9587</code></a> in <a href="">expressjs/body-parser#733</a></li>
<li>2.3.0 by <a href="https://github.com/UlisesGascon"><code>@​UlisesGascon</code></a> in <a href="">expressjs/body-parser#735</a></li>
</ul>
<h2>New Contributors</h2>
<ul>
<li><a href="https://github.com/krzysdz"><code>@​krzysdz</code></a> made their first contribution in <a href="">expressjs/body-parser#730</a></li>
</ul>
<p><strong>Full Changelog</strong>: <a href="https://github.com/expressjs/body-parser/compare/v2.2.2...v2.3.0">https://github.com/expressjs/body-parser/compare/v2.2.2...v2.3.0</a></p>
</blockquote>
</details>
<details>
<summary>Changelog</summary>
<p><em>Sourced from <a href="https://github.com/expressjs/body-parser/blob/master/HISTORY.md">body-parser's changelog</a>.</em></p>
<blockquote>
<h1>2.3.0 / 2026-06-15</h1>
<ul>
<li>Security fix for <a href="https://github.com/expressjs/body-parser/security/advisories/GHSA-v422-hmwv-36x6">GHSA-v422-hmwv-36x6</a></li>
<li>fix: use static exports instead of lazy getters to improve ESM compatibility</li>
<li>feat: add subpath exports for individual parsers</li>
<li>fix: improve <code>limit</code> option validation (<a href="">#698</a>)
<ul>
<li>Invalid <code>limit</code> values (e.g. unparseable strings or <code>NaN</code>) now throw instead of being silently ignored, which previously disabled size limit enforcement</li>
<li><code>null</code> and <code>undefined</code> fall back to the default 100kb limit</li>
</ul>
</li>
<li>deps:
<ul>
<li>content-type@^2.0.0</li>
<li>http-errors@^2.0.1</li>
<li>iconv-lite^0.7.2</li>
<li>qs@^6.15.2</li>
<li>raw-body@^3.0.2</li>
<li>type-is@^2.1.0</li>
</ul>
</li>
</ul>
</blockquote>
</details>
<details>
<summary>Commits</summary>
<ul>
<li><a href=""><code>d0f2ace</code></a> 2.3.0 (<a href="">#735</a>)</li>
<li><a href=""><code>7d03f2f</code></a> chore: updated deps to latest (<a href="">#733</a>)</li>
<li><a href=""><code>8024ba7</code></a> build(deps): bump actions/checkout from 6.0.2 to 6.0.3 (<a href="">#732</a>)</li>
<li><a href=""><code>32b4ed4</code></a> build(deps): bump github/codeql-action from 4.35.3 to 4.36.1 (<a href="">#731</a>)</li>
<li><a href=""><code>ff0f6b9</code></a> docs: update outdated reference to MDN docs (<a href="">#730</a>)</li>
<li><a href=""><code>14d001a</code></a> refactor: switch to const/let and enable eslint no-var rule (<a href="">#729</a>)</li>
<li><a href=""><code>37f36a2</code></a> deps: update content-type and type-is (<a href="">#728</a>)</li>
<li><a href=""><code>e1c244b</code></a> build(deps): bump github/codeql-action from 4.35.1 to 4.35.3 (<a href="">#723</a>)</li>
<li><a href=""><code>e01087f</code></a> build(deps): bump actions/upload-artifact from 7.0.0 to 7.0.1 (<a href="">#724</a>)</li>
<li><a href=""><code>a7698d3</code></a> build(deps): bump actions/setup-node from 6.3.0 to 6.4.0 (<a href="">#725</a>)</li>
<li>Additional commits viewable in <a href="https://github.com/expressjs/body-parser/compare/v2.2.2...v2.3.0">compare view</a></li>
</ul>
</details>
<br />

[![Dependabot compatibility score](https://dependabot-badges.githubapp.com/badges/compatibility_score?dependency-name=body-parser&package-manager=npm_and_yarn&previous-version=2.2.2&new-version=2.3.0)](https://docs.github.com/en/github/managing-security-vulnerabilities/about-dependabot-security-updates#about-compatibility-scores)

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
You can disable automated security fix PRs for this repo from the [Security Alerts page](https://github.com/Acellera/moleculekit/network/alerts).

</details>

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `78fcb97aefab`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.