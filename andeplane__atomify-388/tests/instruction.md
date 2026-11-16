# Issue

**Title:** chore(deps-dev): bump undici from 7.28.0 to 7.29.0

## Description

Bumps [undici](https://github.com/nodejs/undici) from 7.28.0 to 7.29.0.
<details>
<summary>Release notes</summary>
<p><em>Sourced from <a href="https://github.com/nodejs/undici/releases">undici's releases</a>.</em></p>
<blockquote>
<h2>v7.29.0</h2>
<h2>⚠️ Security fixes</h2>
<h3>High severity</h3>
<ul>
<li><a href="https://github.com/nodejs/undici/security/advisories/GHSA-4cwx-7wf7-3272">GHSA-4cwx-7wf7-3272</a>: malformed qualified <code>private</code> Cache-Control directives could cause cross-user information disclosure in shared caches or a parse-time crash. The cache parser now treats empty qualified directives conservatively and safely handles mixed qualified and unqualified directives. Fixed by <a href="">9f10f1e9</a>, with regression coverage in <a href="">466e99d1</a>.</li>
</ul>
<h3>Medium severity</h3>
<ul>
<li><a href="https://github.com/nodejs/undici/security/advisories/GHSA-m8rv-5g2x-5cg5">GHSA-m8rv-5g2x-5cg5</a>: a malicious <code>type</code> property on a duck-typed blob-like HTTP/1.1 request body could inject CRLF sequences into the generated <code>content-type</code> header. Undici now coerces and validates the value before adding it to the request. Fixed by <a href="">33928bc2</a>.</li>
<li><a href="https://github.com/nodejs/undici/security/advisories/GHSA-jr45-8vmc-qm54">GHSA-jr45-8vmc-qm54</a>: optional whitespace around <code>=</code> in qualified <code>no-cache</code> and <code>private</code> directives could bypass shared-cache restrictions and disclose authenticated data across users. Cache-Control parsing now normalizes these forms and applies conservative cache decisions. Fixed by <a href="">98011a86</a>.</li>
<li><a href="https://github.com/nodejs/undici/security/advisories/GHSA-8xcm-r25x-g524">GHSA-8xcm-r25x-g524</a>: the retry interceptor could expose a stale <code>Content-Length</code> after resuming a partial response, potentially causing downstream response desynchronization, hangs, or corruption. Undici now rejects partial responses whose <code>Content-Length</code> is inconsistent with <code>Content-Range</code>. Fixed by <a href="">1b5a5312</a>, with corrected fixtures in <a href="">4a9dafb1</a>.</li>
<li><a href="https://github.com/nodejs/undici/security/advisories/GHSA-v3r7-h72x-cjcm">GHSA-v3r7-h72x-cjcm</a>: unsanitized <code>domain</code> and <code>unparsed</code> values passed to <code>setCookie()</code> could inject cookie attributes. Undici now validates cookie domains, paths, and unparsed attributes more strictly. Fixed by <a href="">3bf91ddb</a>.</li>
</ul>
<p><strong>Full Changelog</strong>: <a href="https://github.com/nodejs/undici/compare/v7.28.0...v7.29.0">https://github.com/nodejs/undici/compare/v7.28.0...v7.29.0</a></p>
</blockquote>
</details>
<details>
<summary>Commits</summary>
<ul>
<li><a href=""><code>9e38fc1</code></a> Bumped v7.29.0 (<a href="">#5590</a>)</li>
<li><a href=""><code>d887e34</code></a> fix: validate coerced header values for CRLF (<a href="">#5579</a>)</li>
<li><a href=""><code>33928bc</code></a> fix: validate blob body content type</li>
<li><a href=""><code>98011a8</code></a> fix(cache): harden cache directive parsing</li>
<li><a href=""><code>4a9dafb</code></a> test(retry): correct broken content-range fixtures in retry-handler.js</li>
<li><a href=""><code>1b5a531</code></a> fix(retry): reject partial content length mismatch</li>
<li><a href=""><code>466e99d</code></a> test: cover crash on mixed unqualified and qualified private cache directives</li>
<li><a href=""><code>9f10f1e</code></a> fix: handle empty qualified private cache directive</li>
<li><a href=""><code>3bf91dd</code></a> fix: harden cookie domain, path, and unparsed attribute validation</li>
<li>See full diff in <a href="https://github.com/nodejs/undici/compare/v7.28.0...v7.29.0">compare view</a></li>
</ul>
</details>
<br />

[![Dependabot compatibility score](https://dependabot-badges.githubapp.com/badges/compatibility_score?dependency-name=undici&package-manager=npm_and_yarn&previous-version=7.28.0&new-version=7.29.0)](https://docs.github.com/en/github/managing-security-vulnerabilities/about-dependabot-security-updates#about-compatibility-scores)

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