# Issue

**Title:** chore(deps): bump aiohttp from 3.14.1 to 3.14.3 in /backend

## Description

Bumps [aiohttp](https://github.com/aio-libs/aiohttp) from 3.14.1 to 3.14.3.
<details>
<summary>Changelog</summary>
<p><em>Sourced from <a href="https://github.com/aio-libs/aiohttp/blob/master/CHANGES.rst">aiohttp's changelog</a>.</em></p>
<blockquote>
<h1>3.14.3 (2026-07-22)</h1>
<h2>Bug fixes</h2>
<ul>
<li>
<p>Fixed the client dropping only the first <code>Authorization</code>, <code>Cookie</code> and
<code>Proxy-Authorization</code> header when a redirect crossed an origin -- by :user:<code>arshsmith1</code>.</p>
<p><em>Related issues and pull requests on GitHub:</em>
:issue:<code>13180</code>.</p>
</li>
<li>
<p>Fixed error message construction in the C HTTP parser -- by :user:<code>bdraco</code>.</p>
<p><em>Related issues and pull requests on GitHub:</em>
:issue:<code>13222</code>.</p>
</li>
</ul>
<hr />
<h1>3.14.2 (2026-07-20)</h1>
<h2>Bug fixes</h2>
<ul>
<li>
<p>Fixed :py:attr:<code>~aiohttp.web.StreamResponse.last_modified</code> rounding a
:class:<code>datetime.datetime</code> with a fractional second down.</p>
<p><em>Related issues and pull requests on GitHub:</em>
:issue:<code>5303</code>.</p>
</li>
<li>
<p>Fixed resolving <code>localhost</code> on Windows to fall back without <code>AI_ADDRCONFIG</code>
when the first lookup fails, so <code>localhost</code> still works without an active
network.</p>
<p><em>Related issues and pull requests on GitHub:</em>
:issue:<code>5357</code>.</p>
</li>
</ul>
<!-- raw HTML omitted -->
</blockquote>
<p>... (truncated)</p>
</details>
<details>
<summary>Commits</summary>
<ul>
<li><a href=""><code>5e392ce</code></a> Release v3.14.3 (<a href="">#13225</a>)</li>
<li><a href=""><code>49f65d5</code></a> [PR <a href="">#13222</a>/f4866933 backport][3.14] Build C parser error message from bounded...</li>
<li><a href=""><code>240099e</code></a> [PR <a href="">#13180</a>/ee53d655 backport][3.14] drop every copy of credential headers on ...</li>
<li><a href=""><code>d93f30a</code></a> Bump version (<a href="">#13202</a>)</li>
<li><a href=""><code>c1b9212</code></a> Release v3.14.2 (<a href="">#13201</a>)</li>
<li><a href=""><code>380d4b5</code></a> [PR <a href="">#13054</a>/ed8b040c backport][3.14] escape backslashes in digest auth quoted-...</li>
<li><a href=""><code>e1e1bee</code></a> Make llhttp method array size dynamic (<a href="">#13174</a>) (<a href="">#13196</a>)</li>
<li><a href=""><code>aa4cf29</code></a> [PR <a href="">#13170</a>/2b906869 backport][3.14] Fix StreamResponse.last_modified rounding...</li>
<li><a href=""><code>71b57b4</code></a> [PR <a href="">#13172</a>/a57747ed backport][3.14] Fix C parser folding fragment into query_...</li>
<li><a href=""><code>64a03fb</code></a> [PR <a href="">#13169</a>/1adc0cd7 backport][3.14] Upgrade http:// to https:// in README.rst...</li>
<li>Additional commits viewable in <a href="https://github.com/aio-libs/aiohttp/compare/v3.14.1...v3.14.3">compare view</a></li>
</ul>
</details>
<br />

[![Dependabot compatibility score](https://dependabot-badges.githubapp.com/badges/compatibility_score?dependency-name=aiohttp&package-manager=uv&previous-version=3.14.1&new-version=3.14.3)](https://docs.github.com/en/github/managing-security-vulnerabilities/about-dependabot-security-updates#about-compatibility-scores)

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