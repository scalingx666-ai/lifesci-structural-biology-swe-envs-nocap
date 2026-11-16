# Issue

**Title:** Bump coverage from 7.10.7 to 7.14.3

## Description

Bumps [coverage](https://github.com/coveragepy/coveragepy) from 7.10.7 to 7.14.3.
<details>
<summary>Changelog</summary>
<p><em>Sourced from <a href="https://github.com/coveragepy/coveragepy/blob/main/CHANGES.rst">coverage's changelog</a>.</em></p>
<blockquote>
<h2>Version 7.14.3 — 2026-06-22</h2>
<ul>
<li>
<p>Fix: the default <code>...</code> exclusion rule now also matches function bodies
whose closing return-type bracket is on its own line (for example, after a
long <code>-&gt; dict[ ... ]</code> annotation that a formatter has split over multiple
lines). Closes <code>issue 2185</code><em>, thanks <code>Mengjia Shang &lt;pull 2196_&gt;</code></em>.</p>
</li>
<li>
<p>Fix: On 3.13t, we incorrectly issued <code>Couldn't import C tracer</code> errors.
We can't import the C tracer because in 7.14.2 we stopped shipping compiled
wheels for 3.13t. Thanks, <code>Hugo van Kemenade &lt;pull 2203_&gt;</code>_.</p>
</li>
</ul>
<p>.. _issue 2185: <a href="">coveragepy/coveragepy#2185</a>
.. _pull 2196: <a href="">coveragepy/coveragepy#2196</a>
.. _pull 2203: <a href="">coveragepy/coveragepy#2203</a></p>
<p>.. _changes_7-14-2:</p>
<h2>Version 7.14.2 — 2026-06-20</h2>
<ul>
<li>
<p>Fix: some messages were being written to stdout, making <code>coverage json -o -</code> useless for capturing JSON output. Now messages are written to stderr,
fixing <code>issue 2197</code>_.</p>
</li>
<li>
<p>Fix: <code>CoverageData</code> kept one SQLite connection per thread that recorded
coverage, but never closed them when those threads terminated. On long runs
with many short-lived threads this leaked one file descriptor per dead
thread, eventually failing with <code>OSError: [Errno 24] Too many open files</code>.
Connections belonging to terminated threads are now closed and dropped.
Fixes <code>issue 2192</code><em>.  Thanks, <code>Matthew Lloyd &lt;pull 2193_&gt;</code></em>.</p>
</li>
<li>
<p>Fix: when using sys.monitoring, we were assuming we could use the
<code>COVERAGE_ID</code> tool id.  But other tools might also assume they could use
that id.  Pre-allocated ids don't really make sense, so now we search for a
usable one instead. Fixes <code>issue 2187</code>_.</p>
</li>
<li>
<p>Following <code>the advice of cibuildwheel &lt;no-13t_&gt;</code>_, we no longer distribute
wheels for Python 3.13 free-threaded.</p>
</li>
</ul>
<p>.. _issue 2187: <a href="">coveragepy/coveragepy#2187</a>
.. _issue 2192: <a href="">coveragepy/coveragepy#2192</a>
.. _pull 2193: <a href="">coveragepy/coveragepy#2193</a>
.. _issue 2197: <a href="">coveragepy/coveragepy#2197</a>
.. _no-13t: <a href="https://py-free-threading.github.io/ci/#building-free-threaded-wheels-with-cibuildwheel">https://py-free-threading.github.io/ci/#building-free-threaded-wheels-with-cibuildwheel</a></p>
<p>.. _changes_7-14-1:</p>
<!-- raw HTML omitted -->
</blockquote>
<p>... (truncated)</p>
</details>
<details>
<summary>Commits</summary>
<ul>
<li><a href=""><code>22f13ea</code></a> docs: sample HTML for 7.14.3</li>
<li><a href=""><code>2ca4e5f</code></a> docs: prep for 7.14.3</li>
<li><a href=""><code>01d714e</code></a> docs: add changelog entry for <a href="">#2203</a></li>
<li><a href=""><code>f36248d</code></a> fix: don't emit 'Couldn't import C tracer' warning for 3.13t (<a href="">#2203</a>)</li>
<li><a href=""><code>86d73d1</code></a> docs: thanks, Mengjia Shang</li>
<li><a href=""><code>3d4ae3c</code></a> docs: add the <a href="">#2196</a> pr link to CHANGES</li>
<li><a href=""><code>f4b2b4d</code></a> fix: exclude <code>...</code> bodies after multi-line return-type annotations (<a href="">#2185</a>) (#...</li>
<li><a href=""><code>1980ed0</code></a> chore: bump sigstore/gh-action-sigstore-python (<a href="">#2201</a>)</li>
<li><a href=""><code>bca3217</code></a> build: since we don't ship 3.13t, don't test it</li>
<li><a href=""><code>77550d8</code></a> docs: oops, mismatched pull requests</li>
<li>Additional commits viewable in <a href="https://github.com/coveragepy/coveragepy/compare/7.10.7...7.14.3">compare view</a></li>
</ul>
</details>
<br />

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `cc309ca1ca6a`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.