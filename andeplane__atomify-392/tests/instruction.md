# Issue

**Title:** chore(deps): bump h2 from 4.3.0 to 4.4.1 in /backend

## Description

Bumps [h2](https://github.com/python-hyper/h2) from 4.3.0 to 4.4.1.
<details>
<summary>Changelog</summary>
<p><em>Sourced from <a href="https://github.com/python-hyper/h2/blob/master/CHANGELOG.rst">h2's changelog</a>.</em></p>
<blockquote>
<h2>4.4.1 (2026-08-03)</h2>
<p><strong>Bugfixes</strong></p>
<ul>
<li>Performance improvement: remove consumed frames in-place from data buffer.</li>
<li>Reject duplicate Host headers in request headers. Thanks to Sunand Mohan for the report.</li>
</ul>
<h2>4.4.0 (2026-07-23)</h2>
<p><strong>API Changes (Backward Incompatible)</strong></p>
<ul>
<li>Support for Python 3.9 has been removed.</li>
<li>Support for PyPy 3.9 has been removed.</li>
<li><code>Stream.end_stream()</code> now raises <code>NoSuchStreamError</code> or <code>StreamClosedError</code> exceptions, instead of a generic <code>KeyError</code>.</li>
<li>Duplicate <code>content-length</code> headers with different values now raise <code>ProtocolError</code>.
Previously, the first <code>content-length</code> header was accepted and later conflicting values were ignored. Thanks to Harshal Parekh for the report.</li>
<li>Parse <code>content-length</code> headers according to RFC9110 grammar for numbers (1*DIGIT). Thanks to Arkadiusz Marta for the report.</li>
<li><strong>backfill from v4.3.0</strong> Convert emitted events into Python <code>dataclass</code>, which introduces new constructors with required arguments.
Instantiating these events without arguments, as previously commonly used API pattern, will no longer work.</li>
</ul>
<p><strong>API Changes (Backward Compatible)</strong></p>
<ul>
<li>Support for Python 3.14 has been added.</li>
<li><code>H2Connection.receive_data</code> now accepts any byte-like object that
implements the buffer protocol, such as <code>bytes</code>, <code>bytearray</code>, and
<code>memoryview</code>. Existing <code>bytes</code> callers are unaffected.</li>
<li>Align CONNECT pseudo-header validation with RFC 9113 s8.3 and RFC 8441 s4.
Ordinary CONNECT now requires <code>:method=CONNECT</code> and <code>:authority</code>, and
forbids <code>:scheme</code>/<code>:path</code>. Extended CONNECT (e.g., WebSocket) requires
<code>:scheme</code>, <code>:path</code>, <code>:authority</code> plus <code>:protocol</code>. (PR <a href="">#1309</a>)</li>
<li>Fix incorrect substring matching of secure header in <code>cookie</code> and <code>:method</code>.</li>
</ul>
<p><strong>Bugfixes</strong></p>
<ul>
<li>Fix to allow sending 0 bytes on a stream even if the flow control window is negative.</li>
<li>Reject non-zero <code>SETTINGS_ENABLE_PUSH</code> values received from servers.</li>
</ul>
</blockquote>
</details>
<details>
<summary>Commits</summary>
<ul>
<li><a href=""><code>bc239af</code></a> v4.4.1</li>
<li><a href=""><code>92b925e</code></a> add test for duplicate host headers</li>
<li><a href=""><code>292a408</code></a> reject duplicate Host headers in request headers</li>
<li><a href=""><code>04d3b87</code></a> update changelog</li>
<li><a href=""><code>439b970</code></a> prepare for next release cycle</li>
<li><a href=""><code>9a7ff74</code></a> performance: remove consumed frames in place from data buffer (<a href="">#1321</a>)</li>
<li><a href=""><code>6cce763</code></a> v4.4.0</li>
<li><a href=""><code>dfafda3</code></a> Bump pytest from 8.4.2 to 9.0.3 (<a href="">#1320</a>)</li>
<li><a href=""><code>b45207c</code></a> dependencies and packaging++</li>
<li><a href=""><code>c40145f</code></a> parse <code>content-length</code> headers according to RFC9110 grammar for numbers (1*DI...</li>
<li>Additional commits viewable in <a href="https://github.com/python-hyper/h2/compare/v4.3.0...v4.4.1">compare view</a></li>
</ul>
</details>
<br />

[![Dependabot compatibility score](https://dependabot-badges.githubapp.com/badges/compatibility_score?dependency-name=h2&package-manager=uv&previous-version=4.3.0&new-version=4.4.1)](https://docs.github.com/en/github/managing-security-vulnerabilities/about-dependabot-security-updates#about-compatibility-scores)

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