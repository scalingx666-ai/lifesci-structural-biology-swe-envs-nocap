# Issue

**Title:** chore(deps): bump msgpack from 1.1.2 to 1.2.1 in /backend

## Description

Bumps [msgpack](https://github.com/msgpack/msgpack-python) from 1.1.2 to 1.2.1.
<details>
<summary>Release notes</summary>
<p><em>Sourced from <a href="https://github.com/msgpack/msgpack-python/releases">msgpack's releases</a>.</em></p>
<blockquote>
<h2>v1.2.1</h2>
<h2>What's Changed</h2>
<ul>
<li>Bump pypa/cibuildwheel from 4.0.0 to 4.1.0 in the all-dependencies group by <a href="https://github.com/dependabot"><code>@​dependabot</code></a>[bot] in <a href="">msgpack/msgpack-python#694</a></li>
<li>release v1.2.1 by <a href="https://github.com/methane"><code>@​methane</code></a> in <a href="">msgpack/msgpack-python#698</a></li>
</ul>
<p><strong>Full Changelog</strong>: <a href="https://github.com/msgpack/msgpack-python/compare/v1.2.0...v1.2.1">https://github.com/msgpack/msgpack-python/compare/v1.2.0...v1.2.1</a></p>
<h2>v1.2.0</h2>
<h2>What's Changed</h2>
<ul>
<li>relax setuptools version by <a href="https://github.com/methane"><code>@​methane</code></a> in <a href="">msgpack/msgpack-python#652</a></li>
<li>update setuptools requirements to &gt;=78.1.1 by <a href="https://github.com/methane"><code>@​methane</code></a> in <a href="">msgpack/msgpack-python#653</a></li>
<li>cython: freethreading_compatible by <a href="https://github.com/methane"><code>@​methane</code></a> in <a href="">msgpack/msgpack-python#654</a></li>
<li>drop Python 3.9 by <a href="https://github.com/methane"><code>@​methane</code></a> in <a href="">msgpack/msgpack-python#656</a></li>
<li>update cython and cibuildwheel by <a href="https://github.com/methane"><code>@​methane</code></a> in <a href="">msgpack/msgpack-python#658</a></li>
<li>ci: add riscv64 manylinux/musllinux wheels by <a href="https://github.com/justeph"><code>@​justeph</code></a> in <a href="">msgpack/msgpack-python#664</a></li>
<li>fix: check <code>unpack_callback_uint32</code> result by <a href="https://github.com/KowalskiThomas"><code>@​KowalskiThomas</code></a> in <a href="">msgpack/msgpack-python#666</a></li>
<li>fix: re-raise existing exception when available by <a href="https://github.com/KowalskiThomas"><code>@​KowalskiThomas</code></a> in <a href="">msgpack/msgpack-python#667</a></li>
<li>fix: check return code in <code>unpack_callback_int64</code> by <a href="https://github.com/KowalskiThomas"><code>@​KowalskiThomas</code></a> in <a href="">msgpack/msgpack-python#665</a></li>
<li>Fixed README example by <a href="https://github.com/vallsv"><code>@​vallsv</code></a> in <a href="">msgpack/msgpack-python#668</a></li>
<li>Bump the all-dependencies group with 6 updates by <a href="https://github.com/dependabot"><code>@​dependabot</code></a>[bot] in <a href="">msgpack/msgpack-python#669</a></li>
<li>ci: use ubuntu-slim for lint by <a href="https://github.com/methane"><code>@​methane</code></a> in <a href="">msgpack/msgpack-python#670</a></li>
<li>fix: enforce <code>strict_map_key</code> with <code>object_pairs_hook</code> by <a href="https://github.com/KowalskiThomas"><code>@​KowalskiThomas</code></a> in <a href="">msgpack/msgpack-python#673</a></li>
<li>Raise DEFAULT_RECURSE_LIMIT from 511 to 1024 by <a href="https://github.com/Copilot"><code>@​Copilot</code></a> in <a href="">msgpack/msgpack-python#676</a></li>
<li>fix: properly handle return codes in <code>pack_timestamp</code> by <a href="https://github.com/KowalskiThomas"><code>@​KowalskiThomas</code></a> in <a href="">msgpack/msgpack-python#672</a></li>
<li>fix: avoid memory leak when decoding invalid nested arrays by <a href="https://github.com/KowalskiThomas"><code>@​KowalskiThomas</code></a> in <a href="">msgpack/msgpack-python#671</a></li>
<li>Add missing autoreset in Packer.pack_ext_type by <a href="https://github.com/bysiber"><code>@​bysiber</code></a> in <a href="">msgpack/msgpack-python#663</a></li>
<li>Add no-GIL interpreter support by <a href="https://github.com/clin1234"><code>@​clin1234</code></a> in <a href="">msgpack/msgpack-python#641</a></li>
<li>skip recursion limit test on free-threaded CPython builds by <a href="https://github.com/methane"><code>@​methane</code></a> in <a href="">msgpack/msgpack-python#679</a></li>
<li>Fix Timestamp.from_datetime returning wrong value for pre-epoch datetimes by <a href="https://github.com/bysiber"><code>@​bysiber</code></a> in <a href="">msgpack/msgpack-python#662</a></li>
<li>Add 3.15 to CI by <a href="https://github.com/clin1234"><code>@​clin1234</code></a> in <a href="">msgpack/msgpack-python#678</a></li>
<li>fix: use-after-free in <code>get_data_from_buffer</code> by <a href="https://github.com/KowalskiThomas"><code>@​KowalskiThomas</code></a> in <a href="">msgpack/msgpack-python#677</a></li>
<li>change changelog format to markdown by <a href="https://github.com/methane"><code>@​methane</code></a> in <a href="">msgpack/msgpack-python#680</a></li>
<li>Bump the all-dependencies group with 2 updates by <a href="https://github.com/dependabot"><code>@​dependabot</code></a>[bot] in <a href="">msgpack/msgpack-python#684</a></li>
<li>Bump sys.setrecursionlimit within test_nest_limit_1024 by <a href="https://github.com/clin1234"><code>@​clin1234</code></a> in <a href="">msgpack/msgpack-python#682</a></li>
<li>Guard <code>Packer</code> buffer protocol hooks with Cython critical sections by <a href="https://github.com/Copilot"><code>@​Copilot</code></a> in <a href="">msgpack/msgpack-python#686</a></li>
<li>Harden <code>Unpacker.__init__</code> re-entry cleanup to prevent buffer/context leaks by <a href="https://github.com/Copilot"><code>@​Copilot</code></a> in <a href="">msgpack/msgpack-python#687</a></li>
<li>release v1.2.0rc1 by <a href="https://github.com/methane"><code>@​methane</code></a> in <a href="">msgpack/msgpack-python#681</a></li>
<li>Wheels CI hangs for MacOS Intel by <a href="https://github.com/crusaderky"><code>@​crusaderky</code></a> in <a href="">msgpack/msgpack-python#689</a></li>
<li>Bump pypa/cibuildwheel from 3.4.1 to 4.0.0 in the all-dependencies group by <a href="https://github.com/dependabot"><code>@​dependabot</code></a>[bot] in <a href="">msgpack/msgpack-python#691</a></li>
<li>release v1.2.0 by <a href="https://github.com/methane"><code>@​methane</code></a> in <a href="">msgpack/msgpack-python#692</a></li>
</ul>
<h2>New Contributors</h2>
<ul>
<li><a href="https://github.com/justeph"><code>@​justeph</code></a> made their first contribution in <a href="">msgpack/msgpack-python#664</a></li>
<li><a href="https://github.com/KowalskiThomas"><code>@​KowalskiThomas</code></a> made their first contribution in <a href="">msgpack/msgpack-python#666</a></li>
<li><a href="https://github.com/vallsv"><code>@​vallsv</code></a> made their first contribution in <a href="">msgpack/msgpack-python#668</a></li>
<li><a href="https://github.com/dependabot"><code>@​dependabot</code></a>[bot] made their first contribution in <a href="">msgpack/msgpack-python#669</a></li>
<li><a href="https://github.com/Copilot"><code>@​Copilot</code></a> made their first contribution in <a href="">msgpack/msgpack-python#676</a></li>
<li><a href="https://github.com/bysiber"><code>@​bysiber</code></a> made their first contribution in <a href="">msgpack/msgpack-python#663</a></li>
<li><a href="https://github.com/clin1234"><code>@​clin1234</code></a> made their first contribution in <a href="">msgpack/msgpack-python#641</a></li>
</ul>
<!-- raw HTML omitted -->
</blockquote>
<p>... (truncated)</p>
</details>
<details>
<summary>Changelog</summary>
<p><em>Sourced from <a href="https://github.com/msgpack/msgpack-python/blob/main/CHANGELOG.md">msgpack's changelog</a>.</em></p>
<blockquote>
<h1>1.2.1</h1>
<p>Release Date: 2026-06-19</p>
<p>Fix a segfault when calling <code>Unpacker.unpack()</code> or <code>Unpacker.skip()</code> after an unpacking failure.
But note that reusing the same <code>Unpacker</code> instance after an unpacking failure is not supported.
Please create a new <code>Unpacker</code> instance instead. GHSA-6v7p-g79w-8964</p>
<h1>1.2.0</h1>
<p>Release Date: 2026-06-11</p>
<ul>
<li>Support free threaded Python. <a href="">#654</a>, <a href="">#686</a></li>
<li>Dropped support for Python 3.9. <a href="">#656</a></li>
<li>Fix missing error checks in C code. <a href="">#665</a>, <a href="">#666</a>, <a href="">#667</a>, <a href="">#672</a></li>
<li>Fix <code>strict_map_key</code> option didn't work for <code>object_pairs_hook</code>. <a href="">#673</a></li>
<li>Increase DEFAULT_RECURSE_LIMIT of Unpacker to 1024. <a href="">#676</a></li>
<li>Fix memory leak when Unpacker returns error for invalid input. <a href="">#671</a></li>
<li>Fix <code>Packer.pack_ext_type()</code> ignored <code>autoreset</code> option. <a href="">#663</a></li>
<li>Fix <code>Timestamp.from_datetime()</code> returning wrong value for pre-epoch datetimes. <a href="">#662</a></li>
<li>Fix use-after-free in <code>unpackb()</code> and <code>Unpacker.unpack()</code> for non-contiguous input. <a href="">#677</a></li>
<li>Fix possible memory leak when calling <code>Unpacker.__init__()</code> several times. <a href="">#687</a></li>
</ul>
</blockquote>
</details>
<details>
<summary>Commits</summary>
<ul>
<li><a href=""><code>448d43f</code></a> release v1.2.1 (<a href="">#698</a>)</li>
<li><a href=""><code>2c56ddb</code></a> Merge commit from fork</li>
<li><a href=""><code>0f4f350</code></a> Bump pypa/cibuildwheel from 4.0.0 to 4.1.0 in the all-dependencies group (<a href="">#694</a>)</li>
<li><a href=""><code>11ed0a5</code></a> release v1.2.0 (<a href="">#692</a>)</li>
<li><a href=""><code>c410a38</code></a> Bump pypa/cibuildwheel from 3.4.1 to 4.0.0 (<a href="">#691</a>)</li>
<li><a href=""><code>97ba6ca</code></a> skip ci: remove unneeded CIBW_SKIP option</li>
<li><a href=""><code>cdde1b0</code></a> Wheels CI hangs for MacOS Intel (<a href="">#689</a>)</li>
<li><a href=""><code>5eb57e1</code></a> release v1.2.0rc1 (<a href="">#681</a>)</li>
<li><a href=""><code>77395c1</code></a> Harden <code>Unpacker.__init__</code> re-entry cleanup to prevent buffer/context leaks (...</li>
<li><a href=""><code>7df7136</code></a> Guard <code>Packer</code> buffer protocol hooks with Cython critical sections (<a href="">#686</a>)</li>
<li>Additional commits viewable in <a href="https://github.com/msgpack/msgpack-python/compare/v1.1.2...v1.2.1">compare view</a></li>
</ul>
</details>
<br />

[![Dependabot compatibility score](https://dependabot-badges.githubapp.com/badges/compatibility_score?dependency-name=msgpack&package-manager=uv&previous-version=1.1.2&new-version=1.2.1)](https://docs.github.com/en/github/managing-security-vulnerabilities/about-dependabot-security-updates#about-compatibility-scores)

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

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `4eef5ba10957`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.