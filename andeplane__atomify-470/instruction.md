# Issue

**Title:** chore(deps-dev): bump undici from 7.30.0 to 7.30.1

## Description

Bumps [undici](https://github.com/nodejs/undici) from 7.30.0 to 7.30.1.
<details>
<summary>Release notes</summary>
<p><em>Sourced from <a href="https://github.com/nodejs/undici/releases">undici's releases</a>.</em></p>
<blockquote>
<h2>v7.30.1</h2>
<h2>Security fixes</h2>
<h3>High severity</h3>
<h4>Denial of service via TLS 1.2 certificate-changing renegotiation</h4>
<p><strong>CVE-2026-87018 · <a href="https://github.com/nodejs/undici/security/advisories/GHSA-qrxm-fqhp-jwvm">GHSA-qrxm-fqhp-jwvm</a></strong></p>
<p>A malicious or compromised HTTPS server could crash the Node.js process by initiating TLS 1.2 renegotiation and presenting a different, CA-trusted certificate whose hostname did not match the requested host. The resulting socket error reached an assertion in undici's HTTP/1.1 and HTTP/2 connection handling. This release handles post-connect certificate errors without terminating the process.</p>
<h4>TLS certificate validation bypass through dropped <code>Agent</code> options</h4>
<p><strong>CVE-2026-109383 · <a href="https://github.com/nodejs/undici/security/advisories/GHSA-2m5v-pch6-74hx">GHSA-2m5v-pch6-74hx</a></strong></p>
<p><code>Agent</code> used a JSON-based clone for constructor options, which silently removed function-valued TLS options such as <code>checkServerIdentity</code>. Applications relying on custom certificate or public-key verification could therefore accept a certificate that the callback was intended to reject. This release preserves TLS options when creating per-origin dispatchers.</p>
<h4>Cache poisoning and cross-user disclosure through cross-origin redirects</h4>
<p><strong>CVE-2026-109829 · <a href="https://github.com/nodejs/undici/security/advisories/GHSA-4w7w-5xrc-9h26">GHSA-4w7w-5xrc-9h26</a></strong></p>
<p>When an originless <code>Agent</code> combined redirect and shared-cache interceptors as <code>compose(redirect(), cache())</code>, a response from a cross-origin redirect could be stored under the original URL. This could allow persistent cache poisoning or disclosure of user-specific responses to later callers. This release verifies the response origin before caching and preserves redirect-hop cache-control policy.</p>
<h4>Denial of service through excessive <code>Content-Encoding</code> values</h4>
<p><strong>CVE-2026-109869 · <a href="https://github.com/nodejs/undici/security/advisories/GHSA-xjj6-f33q-929c">GHSA-xjj6-f33q-929c</a></strong></p>
<p>A malicious HTTP server could crash the Node.js process by returning more than five content codings and closing the connection before sending the body. Although <code>fetch()</code> rejected the response, an error from an orphaned internal stream could remain unhandled. This release validates the content-encoding chain before creating the body stream and aborts oversized chains safely.</p>
<h3>Medium severity</h3>
<h4>Denial of service through the <code>decompress</code> interceptor</h4>
<p><strong>CVE-2026-87029 · <a href="https://github.com/nodejs/undici/security/advisories/GHSA-55wc-3pg8-jfw6">GHSA-55wc-3pg8-jfw6</a></strong></p>
<p>An exception thrown by a downstream response handler from an asynchronous decompression callback could escape as an uncaught exception. A server could trigger this when <code>decompress</code> was composed with a handler such as <code>dump</code> with a size limit. This release converts downstream handler exceptions into per-request errors.</p>
<h4>Subresource Integrity bypass with non-lowercase algorithm tokens</h4>
<p><strong>CVE-2026-109841 · <a href="https://github.com/nodejs/undici/security/advisories/GHSA-f72v-6w45-q472">GHSA-f72v-6w45-q472</a></strong></p>
<p><code>fetch()</code> treated valid mixed-case or uppercase SRI algorithm tokens, such as <code>SHA256</code>, as unknown and could accept a response whose body did not match the configured digest. This release normalizes algorithm tokens before validation and digest selection.</p>
<h4>Denial of service through unbounded EventSource parser state</h4>
<p><strong>CVE-2026-109924 · <a href="https://github.com/nodejs/undici/security/advisories/GHSA-4qv8-2p9j-2685">GHSA-4qv8-2p9j-2685</a></strong></p>
<p>A malicious Server-Sent Events endpoint could exhaust process memory by sending many tiny <code>data:</code> fields without completing an event, or by splitting an unfinished line across many chunks. This release bounds retained EventSource parser state, including field counts, buffered chunks, unfinished-line length, and retained field data.</p>
<h4>Denial of service through unbounded automatic WebSocket PONG buffering</h4>
<!-- raw HTML omitted -->
</blockquote>
<p>... (truncated)</p>
</details>
<details>
<summary>Commits</summary>
<ul>
<li><a href=""><code>7507102</code></a> Bumped v7.30.1 (<a href="">#6022</a>)</li>
<li><a href=""><code>7d60c7b</code></a> [v7.x] fix(cookies): backport <a href="">#5663</a>, <a href="">#5808</a> and <a href="">#5832</a> (<a href="">#6019</a>)</li>
<li><a href=""><code>0227d5d</code></a> fix: avoid unbounded recursion in Set-Cookie attribute parser (<a href="">#5757</a>) (<a href="">#5997</a>)</li>
<li><a href=""><code>5394462</code></a> fix(websocket): bound automatic PONG writes under backpressure</li>
<li><a href=""><code>2991627</code></a> fix(eventsource): bound retained SSE parser state</li>
<li><a href=""><code>18bc8a1</code></a> fix(sri): accept non-lowercase algorithm tokens</li>
<li><a href=""><code>63cba77</code></a> fix(decompress): converge downstream handler throws to per-request errors</li>
<li><a href=""><code>07ded49</code></a> fix(fetch): abort excessive content encoding responses</li>
<li><a href=""><code>b20b82a</code></a> fix(cache): prevent cross-origin redirect cache confusion</li>
<li><a href=""><code>04cb74b</code></a> fix: preserve Agent connection options</li>
<li>Additional commits viewable in <a href="https://github.com/nodejs/undici/compare/v7.30.0...v7.30.1">compare view</a></li>
</ul>
</details>
<br />

[![Dependabot compatibility score](https://dependabot-badges.githubapp.com/badges/compatibility_score?dependency-name=undici&package-manager=npm_and_yarn&previous-version=7.30.0&new-version=7.30.1)](https://docs.github.com/en/github/managing-security-vulnerabilities/about-dependabot-security-updates#about-compatibility-scores)

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

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `5de8b6520a43`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.