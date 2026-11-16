# Issue

**Title:** chore(deps-dev): bump undici from 7.24.5 to 7.28.0

## Description

Bumps [undici](https://github.com/nodejs/undici) from 7.24.5 to 7.28.0.
<details>
<summary>Release notes</summary>
<p><em>Sourced from <a href="https://github.com/nodejs/undici/releases">undici's releases</a>.</em></p>
<blockquote>
<h2>v7.28.0</h2>
<h1>⚠️ Security Release</h1>
<p>This release line addresses <strong>7 security advisories</strong>, all shipped in <strong>v7.28.0</strong>.</p>
<blockquote>
<p><strong>Action required:</strong> Upgrade to <strong>undici 7.28.0</strong> or later.</p>
<pre lang="sh"><code>npm install undici@^7.28.0
</code></pre>
</blockquote>
<p>The v7 line is <strong>not</strong> affected by GHSA-38rv-x7px-6hhq (CVE-2026-9675), which is
an 8.x-only regression.</p>
<blockquote>
<p><strong>Note on GHSA-hm92-r4w5-c3mj:</strong> this fix shipped in <strong>v7.28.0</strong>, not the
earlier 7.2x line — the vulnerable single-pool code was still present through
<code>v7.27.2</code>. The per-origin pool fix is
<a href=""><code>3805b8f8</code></a> (<a href="">#5041</a>).</p>
</blockquote>
<h2>Summary</h2>
<table>
<thead>
<tr>
<th>Advisory</th>
<th>CVE</th>
<th>Severity (CVSS)</th>
<th>Fixed in</th>
<th>Fix commit</th>
</tr>
</thead>
<tbody>
<tr>
<td><a href="https://github.com/nodejs/undici/security/advisories/GHSA-vxpw-j846-p89q">GHSA-vxpw-j846-p89q</a></td>
<td>CVE-2026-12151</td>
<td>High (7.5)</td>
<td>7.28.0</td>
<td><a href=""><code>8cb10f98</code></a></td>
</tr>
<tr>
<td><a href="https://github.com/nodejs/undici/security/advisories/GHSA-vmh5-mc38-953g">GHSA-vmh5-mc38-953g</a></td>
<td>CVE-2026-9697</td>
<td>High (7.4)</td>
<td>7.28.0</td>
<td><a href=""><code>04201f89</code></a></td>
</tr>
<tr>
<td><a href="https://github.com/nodejs/undici/security/advisories/GHSA-hm92-r4w5-c3mj">GHSA-hm92-r4w5-c3mj</a></td>
<td>CVE-2026-6734</td>
<td>High (7.5)</td>
<td>7.28.0</td>
<td><a href=""><code>3805b8f8</code></a></td>
</tr>
<tr>
<td><a href="https://github.com/nodejs/undici/security/advisories/GHSA-pr7r-676h-xcf6">GHSA-pr7r-676h-xcf6</a></td>
<td>CVE-2026-9678</td>
<td>Moderate (5.9)</td>
<td>7.28.0</td>
<td><a href=""><code>85a24055</code></a></td>
</tr>
<tr>
<td><a href="https://github.com/nodejs/undici/security/advisories/GHSA-p88m-4jfj-68fv">GHSA-p88m-4jfj-68fv</a></td>
<td>CVE-2026-9679</td>
<td>Moderate (5.9)</td>
<td>7.28.0</td>
<td><a href=""><code>d0574cc4</code></a></td>
</tr>
<tr>
<td><a href="https://github.com/nodejs/undici/security/advisories/GHSA-g8m3-5g58-fq7m">GHSA-g8m3-5g58-fq7m</a></td>
<td>CVE-2026-11525</td>
<td>Low (3.7)</td>
<td>7.28.0</td>
<td><a href=""><code>d0574cc4</code></a></td>
</tr>
<tr>
<td><a href="https://github.com/nodejs/undici/security/advisories/GHSA-35p6-xmwp-9g52">GHSA-35p6-xmwp-9g52</a></td>
<td>CVE-2026-6733</td>
<td>Low (3.7)</td>
<td>7.28.0</td>
<td><a href=""><code>ea8930cf</code></a></td>
</tr>
</tbody>
</table>
<hr />
<h2>High severity</h2>
<h3>WebSocket DoS via fragment count bypass — CVE-2026-12151</h3>
<p><strong><a href="https://github.com/nodejs/undici/security/advisories/GHSA-vxpw-j846-p89q">GHSA-vxpw-j846-p89q</a></strong> · CWE-400, CWE-770
<strong>Fix:</strong> <a href=""><code>8cb10f98</code></a> <em>websocket: limit the number of fragments in a message</em> (part of backport <a href=""><code>a027a4a0</code></a> <em>Backport WebSocket maxPayloadSize fixes to v7.x</em>, <a href="">#5423</a>)</p>
<p>A malicious WebSocket server can stream a large number of small or empty
continuation frames. Undici enforced a limit on cumulative payload size but did
not limit the <em>number</em> of fragments per message, leading to unbounded memory
growth and denial of service.</p>
<ul>
<li><strong>Affected:</strong> applications using <code>new WebSocket(...)</code> or <code>WebSocketStream</code>
against untrusted endpoints.</li>
<li><strong>Workaround:</strong> none — upgrade is required.</li>
</ul>
<h3>TLS certificate validation bypass in SOCKS5 ProxyAgent — CVE-2026-9697</h3>
<p><strong><a href="https://github.com/nodejs/undici/security/advisories/GHSA-vmh5-mc38-953g">GHSA-vmh5-mc38-953g</a></strong> · CWE-295</p>
<!-- raw HTML omitted -->
</blockquote>
<p>... (truncated)</p>
</details>
<details>
<summary>Commits</summary>
<ul>
<li><a href=""><code>f9eba0a</code></a> Bumped v7.28.0 (<a href="">#5430</a>)</li>
<li><a href=""><code>a027a4a</code></a> Backport WebSocket maxPayloadSize fixes to v7.x (<a href="">#5423</a>)</li>
<li><a href=""><code>8cb10f9</code></a> websocket: limit the number of fragments in a message</li>
<li><a href=""><code>04201f8</code></a> fix: honor requestTls when proxy is SOCKS5</li>
<li><a href=""><code>fcd642f</code></a> fix(socks5): preserve dispatch backpressure return value (<a href="">#5166</a>)</li>
<li><a href=""><code>bc98c97</code></a> fix(socks5): use configured connector in Socks5ProxyAgent (<a href="">#5168</a>)</li>
<li><a href=""><code>9e1c743</code></a> fix(socks5): encode embedded IPv4 tails in IPv6 literals correctly (<a href="">#5099</a>)</li>
<li><a href=""><code>376c8be</code></a> fix(socks5): enforce authenticated state before CONNECT (<a href="">#5097</a>)</li>
<li><a href=""><code>3805b8f</code></a> fix(socks5-proxy-agent): use per-origin pools to prevent cross-origin routing...</li>
<li><a href=""><code>85a2405</code></a> fix(cache): trim qualified field names</li>
<li>Additional commits viewable in <a href="https://github.com/nodejs/undici/compare/v7.24.5...v7.28.0">compare view</a></li>
</ul>
</details>
<br />

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `e37c12faff56`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.