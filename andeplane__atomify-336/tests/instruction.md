# Issue

**Title:** chore(deps): bump requests from 2.32.5 to 2.33.0 in /backend

## Description

Bumps [requests](https://github.com/psf/requests) from 2.32.5 to 2.33.0.
<details>
<summary>Release notes</summary>
<p><em>Sourced from <a href="https://github.com/psf/requests/releases">requests's releases</a>.</em></p>
<blockquote>
<h2>v2.33.0</h2>
<h2>2.33.0 (2026-03-25)</h2>
<p><strong>Announcements</strong></p>
<ul>
<li>📣 Requests is adding inline types. If you have a typed code base that uses Requests, please take a look at <a href="">#7271</a>. Give it a try, and report any gaps or feedback you may have in the issue. 📣</li>
</ul>
<p><strong>Security</strong></p>
<ul>
<li>CVE-2026-25645 <code>requests.utils.extract_zipped_paths</code> now extracts contents to a non-deterministic location to prevent malicious file replacement. This does not affect default usage of Requests, only applications calling the utility function directly.</li>
</ul>
<p><strong>Improvements</strong></p>
<ul>
<li>Migrated to a PEP 517 build system using setuptools. (<a href="">#7012</a>)</li>
</ul>
<p><strong>Bugfixes</strong></p>
<ul>
<li>Fixed an issue where an empty netrc entry could cause malformed authentication to be applied to Requests on Python 3.11+. (<a href="">#7205</a>)</li>
</ul>
<p><strong>Deprecations</strong></p>
<ul>
<li>Dropped support for Python 3.9 following its end of support. (<a href="">#7196</a>)</li>
</ul>
<p><strong>Documentation</strong></p>
<ul>
<li>Various typo fixes and doc improvements.</li>
</ul>
<h2>New Contributors</h2>
<ul>
<li><a href="https://github.com/M0d3v1"><code>@​M0d3v1</code></a> made their first contribution in <a href="">psf/requests#6865</a></li>
<li><a href="https://github.com/aminvakil"><code>@​aminvakil</code></a> made their first contribution in <a href="">psf/requests#7220</a></li>
<li><a href="https://github.com/E8Price"><code>@​E8Price</code></a> made their first contribution in <a href="">psf/requests#6960</a></li>
<li><a href="https://github.com/mitre88"><code>@​mitre88</code></a> made their first contribution in <a href="">psf/requests#7244</a></li>
<li><a href="https://github.com/magsen"><code>@​magsen</code></a> made their first contribution in <a href="">psf/requests#6553</a></li>
<li><a href="https://github.com/Rohan5commit"><code>@​Rohan5commit</code></a> made their first contribution in <a href="">psf/requests#7227</a></li>
</ul>
<p><strong>Full Changelog</strong>: <a href="https://github.com/psf/requests/blob/main/HISTORY.md#2330-2026-03-25">https://github.com/psf/requests/blob/main/HISTORY.md#2330-2026-03-25</a></p>
</blockquote>
</details>
<details>
<summary>Changelog</summary>
<p><em>Sourced from <a href="https://github.com/psf/requests/blob/main/HISTORY.md">requests's changelog</a>.</em></p>
<blockquote>
<h2>2.33.0 (2026-03-25)</h2>
<p><strong>Announcements</strong></p>
<ul>
<li>📣 Requests is adding inline types. If you have a typed code base that
uses Requests, please take a look at <a href="">#7271</a>. Give it a try, and report
any gaps or feedback you may have in the issue. 📣</li>
</ul>
<p><strong>Security</strong></p>
<ul>
<li>CVE-2026-25645 <code>requests.utils.extract_zipped_paths</code> now extracts
contents to a non-deterministic location to prevent malicious file
replacement. This does not affect default usage of Requests, only
applications calling the utility function directly.</li>
</ul>
<p><strong>Improvements</strong></p>
<ul>
<li>Migrated to a PEP 517 build system using setuptools. (<a href="">#7012</a>)</li>
</ul>
<p><strong>Bugfixes</strong></p>
<ul>
<li>Fixed an issue where an empty netrc entry could cause
malformed authentication to be applied to Requests on
Python 3.11+. (<a href="">#7205</a>)</li>
</ul>
<p><strong>Deprecations</strong></p>
<ul>
<li>Dropped support for Python 3.9 following its end of support. (<a href="">#7196</a>)</li>
</ul>
<p><strong>Documentation</strong></p>
<ul>
<li>Various typo fixes and doc improvements.</li>
</ul>
</blockquote>
</details>
<details>
<summary>Commits</summary>
<ul>
<li><a href=""><code>bc04dfd</code></a> v2.33.0</li>
<li><a href=""><code>66d21cb</code></a> Merge commit from fork</li>
<li><a href=""><code>8b9bc8f</code></a> Move badges to top of README (<a href="">#7293</a>)</li>
<li><a href=""><code>e331a28</code></a> Remove unused extraction call (<a href="">#7292</a>)</li>
<li><a href=""><code>753fd08</code></a> docs: fix FAQ grammar in httplib2 example</li>
<li><a href=""><code>774a0b8</code></a> docs(socks): same block as other sections</li>
<li><a href=""><code>9c72a41</code></a> Bump github/codeql-action from 4.33.0 to 4.34.1</li>
<li><a href=""><code>ebf7190</code></a> Bump github/codeql-action from 4.32.0 to 4.33.0</li>
<li><a href=""><code>0e4ae38</code></a> docs: exclude Response.is_permanent_redirect from API docs (<a href="">#7244</a>)</li>
<li><a href=""><code>d568f47</code></a> docs: clarify Quickstart POST example (<a href="">#6960</a>)</li>
<li>Additional commits viewable in <a href="https://github.com/psf/requests/compare/v2.32.5...v2.33.0">compare view</a></li>
</ul>
</details>
<br />

[![Dependabot compatibility score](https://dependabot-badges.githubapp.com/badges/compatibility_score?dependency-name=requests&package-manager=uv&previous-version=2.32.5&new-version=2.33.0)](https://docs.github.com/en/github/managing-security-vulnerabilities/about-dependabot-security-updates#about-compatibility-scores)

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