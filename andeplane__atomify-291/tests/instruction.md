# Issue

**Title:** chore(deps): bump urllib3 from 2.6.2 to 2.6.3 in /backend

## Description

Bumps [urllib3](https://github.com/urllib3/urllib3) from 2.6.2 to 2.6.3.
<details>
<summary>Release notes</summary>
<p><em>Sourced from <a href="https://github.com/urllib3/urllib3/releases">urllib3's releases</a>.</em></p>
<blockquote>
<h2>2.6.3</h2>
<h2>🚀 urllib3 is fundraising for HTTP/2 support</h2>
<p><a href="https://sethmlarson.dev/urllib3-is-fundraising-for-http2-support">urllib3 is raising ~$40,000 USD</a> to release HTTP/2 support and ensure long-term sustainable maintenance of the project after a sharp decline in financial support. If your company or organization uses Python and would benefit from HTTP/2 support in Requests, pip, cloud SDKs, and thousands of other projects <a href="https://opencollective.com/urllib3">please consider contributing financially</a> to ensure HTTP/2 support is developed sustainably and maintained for the long-haul.</p>
<p>Thank you for your support.</p>
<h2>Changes</h2>
<ul>
<li>Fixed a security issue where decompression-bomb safeguards of the streaming API were bypassed when HTTP redirects were followed. (CVE-2026-21441 reported by <a href="https://github.com/D47A"><code>@​D47A</code></a>, 8.9 High, GHSA-38jv-5279-wg99)</li>
<li>Started treating <code>Retry-After</code> times greater than 6 hours as 6 hours by default. (<a href="">urllib3/urllib3#3743</a>)</li>
<li>Fixed <code>urllib3.connection.VerifiedHTTPSConnection</code> on Emscripten. (<a href="">urllib3/urllib3#3752</a>)</li>
</ul>
</blockquote>
</details>
<details>
<summary>Changelog</summary>
<p><em>Sourced from <a href="https://github.com/urllib3/urllib3/blob/main/CHANGES.rst">urllib3's changelog</a>.</em></p>
<blockquote>
<h1>2.6.3 (2026-01-07)</h1>
<ul>
<li>Fixed a high-severity security issue where decompression-bomb safeguards of
the streaming API were bypassed when HTTP redirects were followed.
(<code>GHSA-38jv-5279-wg99 &lt;https://github.com/urllib3/urllib3/security/advisories/GHSA-38jv-5279-wg99&gt;</code>__)</li>
<li>Started treating <code>Retry-After</code> times greater than 6 hours as 6 hours by
default. (<code> &lt;</code>__)</li>
<li>Fixed <code>urllib3.connection.VerifiedHTTPSConnection</code> on Emscripten.
(<code> &lt;</code>__)</li>
</ul>
</blockquote>
</details>
<details>
<summary>Commits</summary>
<ul>
<li><a href=""><code>0248277</code></a> Release 2.6.3</li>
<li><a href=""><code>8864ac4</code></a> Merge commit from fork</li>
<li><a href=""><code>70cecb2</code></a> Fix Scorecard issues related to vulnerable dev dependencies (<a href="">#3755</a>)</li>
<li><a href=""><code>41f249a</code></a> Move &quot;v2.0 Migration Guide&quot; to the end of the table of contents (<a href="">#3747</a>)</li>
<li><a href=""><code>fd4dffd</code></a> Patch <code>VerifiedHTTPSConnection</code> for Emscripten (<a href="">#3752</a>)</li>
<li><a href=""><code>13f0bfd</code></a> Handle massive values in Retry-After when calculating time to sleep for (<a href="">#3743</a>)</li>
<li><a href=""><code>8c480bf</code></a> Bump actions/upload-artifact from 5.0.0 to 6.0.0 (<a href="">#3748</a>)</li>
<li><a href=""><code>4b40616</code></a> Bump actions/cache from 4.3.0 to 5.0.1 (<a href="">#3750</a>)</li>
<li><a href=""><code>82b8479</code></a> Bump actions/download-artifact from 6.0.0 to 7.0.0 (<a href="">#3749</a>)</li>
<li><a href=""><code>34284cb</code></a> Mention experimental features in the security policy (<a href="">#3746</a>)</li>
<li>Additional commits viewable in <a href="https://github.com/urllib3/urllib3/compare/2.6.2...2.6.3">compare view</a></li>
</ul>
</details>
<br />

[![Dependabot compatibility score](https://dependabot-badges.githubapp.com/badges/compatibility_score?dependency-name=urllib3&package-manager=uv&previous-version=2.6.2&new-version=2.6.3)](https://docs.github.com/en/github/managing-security-vulnerabilities/about-dependabot-security-updates#about-compatibility-scores)

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
- `@dependabot merge` will merge this PR after your CI passes on it
- `@dependabot squash and merge` will squash and merge this PR after your CI passes on it
- `@dependabot cancel merge` will cancel a previously requested merge and block automerging
- `@dependabot reopen` will reopen this PR if it is closed
- `@dependabot close` will close this PR and stop Dependabot recreating it. You can achieve the same result by closing it manually
- `@dependabot show <dependency name> ignore conditions` will show all of the ignore conditions of the specified dependency
- `@dependabot ignore this major version` will close this PR and stop Dependabot creating any more for this major version (unless you reopen the PR or upgrade to it yourself)
- `@dependabot ignore this minor version` will close this PR and stop Dependabot creating any more for this minor version (unless you reopen the PR or upgrade to it yourself)
- `@dependabot ignore this dependency` will close this PR and stop Dependabot creating any more for this dependency (unless you reopen the PR or upgrade to it yourself)
You can disable automated security fix PRs for this repo from the [Security Alerts page](https://github.com/andeplane/atomify/network/alerts).

</details>

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `22a9c71afb4f`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.