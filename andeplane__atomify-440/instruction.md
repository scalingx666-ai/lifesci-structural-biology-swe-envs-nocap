# Issue

**Title:** chore(deps-dev): bump undici from 7.29.0 to 7.30.0

## Description

Bumps [undici](https://github.com/nodejs/undici) from 7.29.0 to 7.30.0.
<details>
<summary>Release notes</summary>
<p><em>Sourced from <a href="https://github.com/nodejs/undici/releases">undici's releases</a>.</em></p>
<blockquote>
<h2>v7.30.0</h2>
<h2>What's Changed</h2>
<ul>
<li>[Backport v7.x] fix: selectively re-enable SIMD for ppc64 by <a href="https://github.com/github-actions"><code>@​github-actions</code></a>[bot] in <a href="">nodejs/undici#5794</a></li>
<li>Backport upgrade diagnostics lifecycle fixes to v7.x by <a href="https://github.com/BridgeAR"><code>@​BridgeAR</code></a> in <a href="">nodejs/undici#5783</a></li>
<li>[Backport v7.x] fix: honor backpressure in decompression interceptor by <a href="https://github.com/mcollina"><code>@​mcollina</code></a> in <a href="">nodejs/undici#5837</a></li>
<li>fix: close rejected HTTP/2 WebSocket streams on v7.x by <a href="https://github.com/mcollina"><code>@​mcollina</code></a> in <a href="">nodejs/undici#5876</a></li>
<li>test(fetch): make pull-dont-push exceed any socket buffer by <a href="https://github.com/mcollina"><code>@​mcollina</code></a> in <a href="">nodejs/undici#5889</a></li>
</ul>
<p><strong>Full Changelog</strong>: <a href="https://github.com/nodejs/undici/compare/v7.29.1...v7.30.0">https://github.com/nodejs/undici/compare/v7.29.1...v7.30.0</a></p>
<h2>v7.29.1</h2>
<h2>⚠️ Security fixes</h2>
<h3>High severity</h3>
<ul>
<li><a href="https://github.com/nodejs/undici/security/advisories/GHSA-w293-vg96-wgc3">GHSA-w293-vg96-wgc3</a>: <code>BalancedPool</code> could drop function-valued connection options while cloning its configuration, including custom TLS certificate validation callbacks. Undici now preserves <code>connect</code> and legacy <code>tls</code> options when creating upstreams. Fixed by <a href="">f690157d</a>.</li>
<li><a href="https://github.com/nodejs/undici/security/advisories/GHSA-rfgv-xxqx-mfg5">GHSA-rfgv-xxqx-mfg5</a>: a WebSocket server could select a subprotocol when none was requested, causing an uncaught <code>TypeError</code> that could terminate the process. Undici now rejects the handshake with protocol error 1002. Fixed by <a href="">6615e017</a>.</li>
</ul>
<h3>Medium severity</h3>
<ul>
<li><a href="https://github.com/nodejs/undici/security/advisories/GHSA-3wwx-pv8p-q78v">GHSA-3wwx-pv8p-q78v</a>: a malformed permessage-deflate payload exceeding the configured decompression limit could emit an unhandled zlib error and terminate the process. Undici now destroys the inflater after reaching the limit. Fixed by <a href="">63cf698b</a>.</li>
<li><a href="https://github.com/nodejs/undici/security/advisories/GHSA-rx4f-c7p8-82vq">GHSA-rx4f-c7p8-82vq</a>: an unclean <code>WebSocketStream</code> close could create an unobserved rejected promise when its writable stream was locked, potentially terminating the process. Undici now propagates the failure through the retained writable stream controller. Fixed by <a href="">1858656e</a>.</li>
<li><a href="https://github.com/nodejs/undici/security/advisories/GHSA-2jfj-6hjv-fm6j">GHSA-2jfj-6hjv-fm6j</a>: shared caches could store and replay responses containing <code>Set-Cookie</code>, disclosing one user's cookies to another caller. Undici now excludes these responses from shared caches, including existing entries and revalidation paths. Fixed by <a href="">b6c5a002</a>.</li>
<li><a href="https://github.com/nodejs/undici/security/advisories/GHSA-3xpg-4rpp-hhhm">GHSA-3xpg-4rpp-hhhm</a>: the decompression interceptor did not bound decoded output, allowing compressed responses to consume excessive memory. Undici now limits every decompression stage to 64 MiB by default and supports a configurable <code>maxSize</code>. Fixed by <a href="">2c7d7e12</a>.</li>
<li><a href="https://github.com/nodejs/undici/security/advisories/GHSA-pmjh-fq2x-6v4x">GHSA-pmjh-fq2x-6v4x</a>: a terminal retry failure after response headers were exposed could orphan the original response body, causing consumers to hang indefinitely. Undici now propagates the terminal error to the exposed body. Fixed by <a href="">3c672659</a>.</li>
</ul>
<h3>Low severity</h3>
<ul>
<li><a href="https://github.com/nodejs/undici/security/advisories/GHSA-8436-99hf-9mmv">GHSA-8436-99hf-9mmv</a>: cache interceptors could store and replay responses to unsafe HTTP methods such as <code>POST</code> or <code>DELETE</code>. Undici now restricts cache reads and writes to safe methods while preserving invalidation by successful unsafe requests. Fixed by <a href="">b61d9432</a>.</li>
<li><a href="https://github.com/nodejs/undici/security/advisories/GHSA-2gqq-gqf2-x968">GHSA-2gqq-gqf2-x968</a>: the dump interceptor could treat an oversized chunked response as successfully truncated when no <code>Content-Length</code> was present. Undici now enforces <code>maxSize</code> against received bytes and aborts oversized responses. Fixed by <a href="">21693f40</a>.</li>
<li><a href="https://github.com/nodejs/undici/security/advisories/GHSA-r53p-7pc4-xj5r">GHSA-r53p-7pc4-xj5r</a>: the retry interceptor could concatenate a resumed response with inconsistent framing into downstream output, enabling response splitting or corruption. Undici now validates <code>Content-Range</code> against the original response framing before resuming. Fixed by <a href="">cd8af90b</a>.</li>
</ul>
<h2>What's Changed</h2>
<ul>
<li>[v7.x] drop: remove Node.js 26 from shared-builtin CI build by <a href="https://github.com/mcollina"><code>@​mcollina</code></a> in <a href="">nodejs/undici#5592</a></li>
<li>fix(h2): honour headersTimeout by <a href="https://github.com/mcollina"><code>@​mcollina</code></a> in <a href="">nodejs/undici#5604</a></li>
<li>fix(h2): keep the connection ref'd while requests are outstanding by <a href="https://github.com/mcollina"><code>@​mcollina</code></a> in <a href="">nodejs/undici#5605</a></li>
<li>ci: increase Windows workflow timeout on v7.x by <a href="https://github.com/mcollina"><code>@​mcollina</code></a> in <a href="">nodejs/undici#5621</a></li>
<li>fix(h2): retire the request that completed, not the head of the queue by <a href="https://github.com/mcollina"><code>@​mcollina</code></a> in <a href="">nodejs/undici#5618</a></li>
<li>fix(h2): settle a request whose stream is cancelled by <a href="https://github.com/mcollina"><code>@​mcollina</code></a> in <a href="">nodejs/undici#5607</a></li>
<li>perf: reduce EventSourceStream parser allocations (<a href="">#5032</a>) by <a href="https://github.com/mcollina"><code>@​mcollina</code></a> in <a href="">nodejs/undici#5646</a></li>
<li>fix(h2): handle GOAWAY for CONNECT streams by <a href="https://github.com/mcollina"><code>@​mcollina</code></a> in <a href="">nodejs/undici#5640</a></li>
<li>[v7.x] perf(h1): drop idle-socket timer floor with a ref'd setImmediate (<a href="">#5707</a>) by <a href="https://github.com/mcollina"><code>@​mcollina</code></a> in <a href="">nodejs/undici#5769</a></li>
</ul>
<p><strong>Full Changelog</strong>: <a href="https://github.com/nodejs/undici/compare/v7.29.0...v7.29.1">https://github.com/nodejs/undici/compare/v7.29.0...v7.29.1</a></p>
</blockquote>
</details>
<details>
<summary>Commits</summary>
<ul>
<li><a href=""><code>6741f66</code></a> Bumped v7.30.0 (<a href="">#5887</a>)</li>
<li><a href=""><code>8d2f2f0</code></a> test(fetch): make pull-dont-push exceed any socket buffer (<a href="">#5889</a>)</li>
<li><a href=""><code>fad98ae</code></a> fix: close rejected HTTP/2 WebSocket streams on v7.x (<a href="">#5876</a>)</li>
<li><a href=""><code>369058e</code></a> fix: honor backpressure in decompression interceptor (<a href="">#5829</a>) (<a href="">#5837</a>)</li>
<li><a href=""><code>a7914e5</code></a> Backport upgrade diagnostics lifecycle fixes to v7.x (<a href="">#5783</a>)</li>
<li><a href=""><code>48367af</code></a> fix: selectively re-enable SIMD for ppc64 (<a href="">#5776</a>) (<a href="">#5794</a>)</li>
<li><a href=""><code>d39a83e</code></a> Bumped v7.29.1 (<a href="">#5772</a>)</li>
<li><a href=""><code>0d88464</code></a> fix(test): remove unused EventEmitter import</li>
<li><a href=""><code>f57411b</code></a> perf(h1): drop idle-socket timer floor with a ref'd setImmediate (<a href="">#5707</a>) (<a href="">#5769</a>)</li>
<li><a href=""><code>3c67265</code></a> fix(retry): settle exposed body on terminal failure</li>
<li>Additional commits viewable in <a href="https://github.com/nodejs/undici/compare/v7.29.0...v7.30.0">compare view</a></li>
</ul>
</details>
<br />

[![Dependabot compatibility score](https://dependabot-badges.githubapp.com/badges/compatibility_score?dependency-name=undici&package-manager=npm_and_yarn&previous-version=7.29.0&new-version=7.30.0)](https://docs.github.com/en/github/managing-security-vulnerabilities/about-dependabot-security-updates#about-compatibility-scores)

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

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `831ab13d228e`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.