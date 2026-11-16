# Issue

**Title:** Bump anyio from 4.14.1 to 4.14.2

## Description

Bumps [anyio](https://github.com/agronholm/anyio) from 4.14.1 to 4.14.2.
<details>
<summary>Release notes</summary>
<p><em>Sourced from <a href="https://github.com/agronholm/anyio/releases">anyio's releases</a>.</em></p>
<blockquote>
<h2>4.14.2</h2>
<ul>
<li>Changed <code>ByteReceiveStream.receive()</code> implementations to raise a <code>ValueError</code> when <code>max_bytes</code> is not a positive integer (<a href="">#1191</a>)</li>
<li>Fixed <code>CapacityLimiter.total_tokens</code> rejecting <code>float(&quot;inf&quot;)</code> when the limiter was instantiated outside of an event loop. The adapter setter checked for infinity by identity (<code>value is math.inf</code>), so only the exact <code>math.inf</code> singleton was accepted, while every backend setter (using <code>math.isinf()</code>) accepts any positive infinity (<a href="">#1189</a>; PR by <a href="https://github.com/greymoth-jp"><code>@​greymoth-jp</code></a>).</li>
<li>Fixed <code>to_process.run_sync()</code> deadlocking when the worker function writes enough data to <code>sys.stderr</code> to fill the (undrained) pipe buffer. The worker process now redirects <code>sys.stderr</code> to <code>os.devnull</code> as well, matching the documented behavior</li>
<li>Fixed <code>TLSStream.wrap()</code> matching an internationalized (unicode) host name against the peer certificate using IDNA 2003 (via the standard library) instead of IDNA 2008, which could cause the host name to be matched against the wrong certificate (<a href="">#1208</a>)</li>
<li>Fixed <code>anyio.open_process()</code> (and <code>run_process()</code>) ignoring the <code>extra_groups</code> argument, as it mistakenly passed the value of the <code>group</code> argument instead (<a href="">#1209</a>)</li>
<li>Fixed <code>CapacityLimiter.acquire_nowait()</code> and <code>CapacityLimiter.acquire_nowait_on_behalf_of()</code> raising <code>trio.WouldBlock</code> instead of <code>anyio.WouldBlock</code> on the <code>trio</code> backend when there are no tokens available (<a href="">#1218</a>)</li>
<li>Fixed <code>CapacityLimiter</code> on the asyncio backend over-granting tokens (<code>borrowed_tokens</code> exceeding <code>total_tokens</code> and <code>available_tokens</code> going negative) when a non-blocking acquire was made in the window between a token being released and the notified waiter resuming. The freed token is now reserved for the woken waiter right away, so the non-blocking acquire correctly raises <code>WouldBlock</code> (<a href="">#1170</a>; PR by <a href="https://github.com/gaoflow"><code>@​gaoflow</code></a>)</li>
<li>Fixed unnecessary CPU spin when delivering cancellation from <code>CancelScope</code> on asyncio under certain conditions, including improper cancel scope nesting (<a href="">#1111</a>)</li>
</ul>
</blockquote>
</details>
<details>
<summary>Commits</summary>
<ul>
<li><a href=""><code>c384f99</code></a> Bumped up the version</li>
<li><a href=""><code>dbba29d</code></a> Fixed 100% CPU spin on cancel scope misuse (<a href="">#1217</a>)</li>
<li><a href=""><code>6bbc6c3</code></a> Fix CapacityLimiter over-granting tokens on asyncio (<a href="">#1172</a>)</li>
<li><a href=""><code>6f82b25</code></a> Refactored TestTLSStream.test_receive_invalid_max_bytes() to be less flaky</li>
<li><a href=""><code>be24b04</code></a> Relaxed timeouts to fix test flakiness</li>
<li><a href=""><code>8113506</code></a> Fix test flakiness caused by slow callback duration logging</li>
<li><a href=""><code>1e988b6</code></a> Fixed CapacityLimiter raising trio.WouldBlock instead of anyio.WouldBlock (<a href="">#1</a>...</li>
<li><a href=""><code>44713f3</code></a> Pin setup-uv to a commit sha across downstream jobs (<a href="">#1213</a>)</li>
<li><a href=""><code>f1b7301</code></a> Fixed stderr writes in a worker subprocess causing a deadlock (<a href="">#1207</a>)</li>
<li><a href=""><code>212be93</code></a> Fix flaky test_tcp_listener_same_port using a hardcoded port (<a href="">#1206</a>)</li>
<li>Additional commits viewable in <a href="https://github.com/agronholm/anyio/compare/4.14.1...4.14.2">compare view</a></li>
</ul>
</details>
<br />

[![Dependabot compatibility score](https://dependabot-badges.githubapp.com/badges/compatibility_score?dependency-name=anyio&package-manager=uv&previous-version=4.14.1&new-version=4.14.2)](https://docs.github.com/en/github/managing-security-vulnerabilities/about-dependabot-security-updates#about-compatibility-scores)

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
You can disable automated security fix PRs for this repo from the [Security Alerts page](https://github.com/a-r-j/graphein/network/alerts).

</details>

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `f8c4fe9ac812`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.