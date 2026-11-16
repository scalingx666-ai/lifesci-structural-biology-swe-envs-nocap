# Issue

**Title:** Bump setuptools from 83.0.0 to 84.1.0

## Description

Bumps [setuptools](https://github.com/pypa/setuptools) from 83.0.0 to 84.1.0.
<details>
<summary>Changelog</summary>
<p><em>Sourced from <a href="https://github.com/pypa/setuptools/blob/main/NEWS.rst">setuptools's changelog</a>.</em></p>
<blockquote>
<h1>v84.1.0</h1>
<h2>Features</h2>
<ul>
<li><code>setuptools.archive_util</code> now raises the new <code>UnsafeMember</code> exception when
an archive member would be extracted outside of the extraction directory,
where previously such a member was silently skipped. Aborting makes a
malicious or malformed archive visible to the caller instead of yielding a
quietly incomplete extraction, and matches the behavior of the standard
library's <code>tarfile</code> extraction filters.</li>
</ul>
<h2>Bugfixes</h2>
<ul>
<li>
<p><code>Wheel.install_as_egg</code> no longer creates namespace package directories
outside of the destination egg directory. Entries in a wheel's
<code>namespace_packages.txt</code> were split on <code>.</code> and passed straight to
<code>os.path.join</code>, so an entry that was absolute, drive-qualified, or UNC
discarded the destination and placed an <code>__init__.py</code> at a path chosen by
the wheel. Namespace entries are now validated as dotted module names on
every platform -- see GHSA-xmj3-9gf7-h52w.</p>
<p>This code path is reached only by the deprecated <code>setup_requires</code>
mechanism when <code>setup()</code> is invoked outside a PEP 517 frontend; the
setuptools build backend never reaches it.</p>
</li>
<li>
<p><code>setuptools.archive_util</code> no longer extracts archive members outside of the
requested extraction directory. Both the tar and zip formats specify <code>/</code> as
the only path separator, but the guard against <code>..</code> components split member
names on <code>/</code> alone, so a name such as <code>..\escaped.txt</code> was treated as a
single component and then resolved as a traversal by the filesystem on
Windows. Member names containing a backslash, a drive letter, or a UNC prefix
are now rejected on every platform, as are members whose resolved destination
falls outside the extraction directory -- see GHSA-grgh-hr87-3jpw.</p>
</li>
</ul>
<h1>v84.0.0</h1>
<h2>Features</h2>
<ul>
<li>Newline-separated <code>keywords</code> and <code>platforms</code><code>pypa/setuptools#4887</code><code>old specification &lt;https://peps.python.org/pep-0345/&gt;</code>_ separated items with spaces and the current one uses commas. (<a href="">#4887</a>)</li>
<li><code>Extension</code><code>pypa/distutils#373</code><a href="">#5022</a>)</li>
<li>The C compiler modules now emit log messages through their own <code>compilers.C.*</code> loggers instead of the distutils root logger, part of decoupling the compilers package from distutils. The logger names are normalized to a stable <code>compilers.C.*</code> prefix so they remain constant as the package migrates toward a standalone <code>compilers.C</code> distribution. (<a href="">#5266</a>)</li>
<li>The C compilers gained a <code>Compiler.call</code> method -- a thin wrapper over <code>subprocess.check_call</code> (with macOS deployment-target env injection) that is the modern replacement for <code>Compiler.spawn</code>. The compilers no longer depend on <code>distutils.spawn</code>, <code>distutils.dir_util</code>, <code>distutils.file_util</code>, <code>distutils._modified</code>, or <code>distutils.util.execute</code>/<code>split_quoted</code>: the generic <code>newer</code>/<code>newer_group</code> and <code>split_quoted</code> helpers are vendored into the <code>compilers</code> package, and <code>Compiler.mkpath</code>/<code>move_file</code>/<code>execute</code> are implemented directly on the standard library (<code>os.makedirs</code>/<code>shutil.move</code>). The methods are retained for backward compatibility. (<a href="">#5267</a>)</li>
<li>The compilers no longer depend on <code>distutils.util</code>, <code>distutils.version</code>, <code>distutils.compat</code>, or <code>distutils._macos_compat</code>. The platform-identification helpers (<code>get_platform</code>/<code>get_host_platform</code>/<code>is_mingw</code>) now live in <code>distutils.compilers.platform.detect</code> and the macOS deployment-target logic and <code>compiler_fixup</code> in <code>distutils.compilers.platform.macos</code>; <code>CygwinCCompiler.gcc_version</code> returns a <code>packaging.version.Version</code>. <code>distutils.util</code> re-exports the platform/macOS helpers from their new homes for backward compatibility rather than keeping duplicate copies. (sysconfig lookups still route through distutils pending its own decoupling.) (<a href="">#5268</a>)</li>
<li>The compilers now read their build configuration from the standard library's <code>sysconfig</code> instead of <code>distutils.sysconfig</code>. Per-compiler customization -- previously <code>distutils.sysconfig.customize_compiler</code> -- has moved into <code>Compiler.configure_system()</code>: a no-op on the base class, with <code>UnixCCompiler</code> applying the compiler/flag/archiver settings CPython recorded in <code>sysconfig</code> (and the usual <code>CC</code>/<code>CFLAGS</code>/<code>LDSHARED</code>/… environment overrides). <code>distutils.sysconfig.customize_compiler</code> is retained as a thin wrapper that calls <code>compiler.configure_system()</code>. (<a href="">#5269</a>)</li>
</ul>
<!-- raw HTML omitted -->
</blockquote>
<p>... (truncated)</p>
</details>
<details>
<summary>Commits</summary>
<ul>
<li><a href=""><code>77b7ace</code></a> Bump version: 84.0.0 → 84.1.0</li>
<li><a href=""><code>e66004c</code></a> Merge pull request <a href="">#5329</a> from pypa/fix/wheel-namespace-path-escape</li>
<li><a href=""><code>54b5dca</code></a> Cover the containment check with a symlink escape test</li>
<li><a href=""><code>6d07b8d</code></a> Validate namespace package names during legacy wheel installation</li>
<li><a href=""><code>8419f00</code></a> Merge pull request <a href="">#5356</a> from pypa/skeleton-ruff-0.16</li>
<li><a href=""><code>6dadc86</code></a> Remove DTZ011 suppressions that Ruff 0.17 reports as unused.</li>
<li><a href=""><code>715ec38</code></a> Merge <a href="https://github.com/jaraco/skeleton">https://github.com/jaraco/skeleton</a></li>
<li><a href=""><code>9695460</code></a><code>jaraco/skeleton#219</code></li>
<li><a href=""><code>9e08129</code></a><code>jaraco/skeleton#216</code></li>
<li><a href=""><code>4e612f9</code></a> Ignore PyPy's deprecated check_home warning in tests</li>
<li>Additional commits viewable in <a href="https://github.com/pypa/setuptools/compare/v83.0.0...v84.1.0">compare view</a></li>
</ul>
</details>
<br />

[![Dependabot compatibility score](https://dependabot-badges.githubapp.com/badges/compatibility_score?dependency-name=setuptools&package-manager=uv&previous-version=83.0.0&new-version=84.1.0)](https://docs.github.com/en/github/managing-security-vulnerabilities/about-dependabot-security-updates#about-compatibility-scores)

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

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `daa34db931bc`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.