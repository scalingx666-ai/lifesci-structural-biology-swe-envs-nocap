# Issue

**Title:** Bump mistune from 0.8.4 to 3.3.3

## Description

Bumps [mistune](https://github.com/lepture/mistune) from 0.8.4 to 3.3.3.
<details>
<summary>Release notes</summary>
<p><em>Sourced from <a href="https://github.com/lepture/mistune/releases">mistune's releases</a>.</em></p>
<blockquote>
<h2>v3.3.3</h2>
<h3>   🐞 Bug Fixes</h3>
<ul>
<li>Set prev token in render_list_item and add block_text to ignore_blocks  -  by <a href="https://github.com/gaoflow"><code>@​gaoflow</code></a> in <a href="">lepture/mistune#456</a> <a href=""><!-- raw HTML omitted -->(0799e)<!-- raw HTML omitted --></a></li>
<li>Improve nested bracket link input  -  by <a href="https://github.com/lepture"><code>@​lepture</code></a> <a href=""><!-- raw HTML omitted -->(fe02f)<!-- raw HTML omitted --></a></li>
<li>Escape literal emphasis markers in MarkdownRenderer  -  by <a href="https://github.com/Sanjays2402"><code>@​Sanjays2402</code></a> <a href=""><!-- raw HTML omitted -->(b0429)<!-- raw HTML omitted --></a></li>
<li>Use SAFE_PROTOCOLS instead of HARMFUL_PROTOCOLS  -  by <a href="https://github.com/lepture"><code>@​lepture</code></a> <a href=""><!-- raw HTML omitted -->(4009f)<!-- raw HTML omitted --></a></li>
<li>Add max_emphasis_depth  -  by <a href="https://github.com/lepture"><code>@​lepture</code></a> <a href=""><!-- raw HTML omitted -->(0938f)<!-- raw HTML omitted --></a></li>
<li>Add image max depth  -  by <a href="https://github.com/lepture"><code>@​lepture</code></a> <a href=""><!-- raw HTML omitted -->(cca5e)<!-- raw HTML omitted --></a></li>
<li><strong>inline</strong>: Use original run length in emphasis multiple-of-3 rule  -  by <a href="https://github.com/greymoth-jp"><code>@​greymoth-jp</code></a> and <strong>Claude Opus 4.8 (1M context)</strong> <a href=""><!-- raw HTML omitted -->(2d26b)<!-- raw HTML omitted --></a></li>
</ul>
<h3>   🏎 Performance</h3>
<ul>
<li>Improve link label parsing performance  -  by <a href="https://github.com/lepture"><code>@​lepture</code></a> <a href=""><!-- raw HTML omitted -->(e001d)<!-- raw HTML omitted --></a></li>
<li>Improve performance for math and formatting plugins  -  by <a href="https://github.com/lepture"><code>@​lepture</code></a> <a href=""><!-- raw HTML omitted -->(c2228)<!-- raw HTML omitted --></a></li>
<li>Improve for footnotes, ruby and spoiler  -  by <a href="https://github.com/lepture"><code>@​lepture</code></a> <a href=""><!-- raw HTML omitted -->(ae7e9)<!-- raw HTML omitted --></a></li>
</ul>
<h5>    <a href="https://github.com/lepture/mistune/compare/v3.3.2...v3.3.3">View changes on GitHub</a></h5>
<h2>v3.3.2</h2>
<h3>   🐞 Bug Fixes</h3>
<ul>
<li>Try to support python 3.8  -  by <a href="https://github.com/lepture"><code>@​lepture</code></a> <a href=""><!-- raw HTML omitted -->(c9f1a)<!-- raw HTML omitted --></a></li>
<li>Resolve mypy issues for python 3.8 and 3.9+  -  by <a href="https://github.com/lepture"><code>@​lepture</code></a> <a href=""><!-- raw HTML omitted -->(29b70)<!-- raw HTML omitted --></a></li>
</ul>
<h5>    <a href="https://github.com/lepture/mistune/compare/v3.3.1...v3.3.2">View changes on GitHub</a></h5>
<h2>v3.3.1</h2>
<h3>   🐞 Bug Fixes</h3>
<ul>
<li><strong>abbr</strong>: Update process_text method in abrr, adding parse_emphasis parameter  -  by <a href="https://github.com/lepture"><code>@​lepture</code></a> <a href=""><!-- raw HTML omitted -->(ae850)<!-- raw HTML omitted --></a></li>
<li><strong>directive</strong>: Use correct file path for include directive  -  by <a href="https://github.com/lepture"><code>@​lepture</code></a> <a href=""><!-- raw HTML omitted -->(18c21)<!-- raw HTML omitted --></a></li>
</ul>
<h5>    <a href="https://github.com/lepture/mistune/compare/v3.3.0...v3.3.1">View changes on GitHub</a></h5>
<h2>v3.3.0</h2>
<h3>   🐞 Bug Fixes</h3>
<ul>
<li>Resolve O(n^2) DoS in parse_link_text (CWE-400)  -  by <strong>bhanugoudm041</strong> <a href=""><!-- raw HTML omitted -->(b6b49)<!-- raw HTML omitted --></a></li>
<li>Resolve O(n^2) DoS in parse_link_text (CWE-400)-Type handling/testing done  -  by <strong>bhanugoudm041</strong> <a href=""><!-- raw HTML omitted -->(b3af8)<!-- raw HTML omitted --></a></li>
<li><strong>block</strong>: Avoid quadratic ref link scans  -  by <a href="https://github.com/lepture"><code>@​lepture</code></a> <a href=""><!-- raw HTML omitted -->(2b04d)<!-- raw HTML omitted --></a></li>
<li><strong>cli</strong>: Add entrypoint and utf-8 output  -  by <a href="https://github.com/lepture"><code>@​lepture</code></a> <a href=""><!-- raw HTML omitted -->(2f244)<!-- raw HTML omitted --></a></li>
<li><strong>directives</strong>: Constrain include targets  -  by <a href="https://github.com/lepture"><code>@​lepture</code></a> <a href=""><!-- raw HTML omitted -->(1bef3)<!-- raw HTML omitted --></a></li>
<li><strong>formatting</strong>: Avoid quadratic marker scans  -  by <a href="https://github.com/lepture"><code>@​lepture</code></a> <a href=""><!-- raw HTML omitted -->(96d0f)<!-- raw HTML omitted --></a></li>
<li><strong>image</strong>: Validate figure width option  -  by <a href="https://github.com/lepture"><code>@​lepture</code></a> <a href=""><!-- raw HTML omitted -->(e3e51)<!-- raw HTML omitted --></a></li>
<li><strong>inline</strong>: Avoid bracket parsing DoS  -  by <a href="https://github.com/lepture"><code>@​lepture</code></a> <a href=""><!-- raw HTML omitted -->(25f25)<!-- raw HTML omitted --></a></li>
<li><strong>math</strong>: Reject currency patterns and cross-line matches in inline math  -  by <a href="https://github.com/geopanther"><code>@​geopanther</code></a> <a href=""><!-- raw HTML omitted -->(566e1)<!-- raw HTML omitted --></a></li>
<li><strong>math</strong>: Support display and backtick math  -  by <a href="https://github.com/lepture"><code>@​lepture</code></a> <a href=""><!-- raw HTML omitted -->(1141e)<!-- raw HTML omitted --></a></li>
<li><strong>renderer</strong>: Render plugin list and table nodes  -  by <a href="https://github.com/lepture"><code>@​lepture</code></a> <a href=""><!-- raw HTML omitted -->(614b0)<!-- raw HTML omitted --></a></li>
<li><strong>renderer</strong>: Block encoded unsafe URL schemes  -  by <a href="https://github.com/lepture"><code>@​lepture</code></a> <a href=""><!-- raw HTML omitted -->(c7101)<!-- raw HTML omitted --></a></li>
</ul>
<!-- raw HTML omitted -->
</blockquote>
<p>... (truncated)</p>
</details>
<details>
<summary>Changelog</summary>
<p><em>Sourced from <a href="https://github.com/lepture/mistune/blob/main/docs/changes.rst">mistune's changelog</a>.</em></p>
<blockquote>
<h2>Version 3.3.3</h2>
<p><strong>Released on Jul 9, 2026</strong></p>
<ul>
<li>Limit deeply nested emphasis and image parsing to avoid <code>RecursionError</code>.</li>
<li>Fix repeated link suffix and unclosed formatting marker performance issues.</li>
<li>Fix unclosed inline spoiler performance issues.</li>
<li>Avoid recursive parsing for adjacent ruby tokens.</li>
<li>Speed up footnote reference indexing.</li>
</ul>
<h2>Version 3.3.2</h2>
<p><strong>Released on Jun 23, 2026</strong></p>
<ul>
<li>Fix Python 3.8 import compatibility in the inline parser.</li>
<li>Fix mypy compatibility for list parsing on Python 3.8 and 3.9+.</li>
</ul>
<h2>Version 3.3.1</h2>
<p><strong>Released on Jun 22, 2026</strong></p>
<ul>
<li>Fix <code>abbr</code> plugin compatibility with escaped inline text.</li>
<li>Normalize included Markdown line endings before parsing directives.</li>
</ul>
<h2>Version 3.3.0</h2>
<p><strong>Released on Jun 21, 2026</strong></p>
<ul>
<li>Improve CommonMark compatibility and parser performance.</li>
<li>Add command line entrypoint with UTF-8 output.</li>
<li>Support display and backtick math.</li>
<li>Render plugin list and table nodes in Markdown renderer.</li>
<li>Escape leading block markers in Markdown renderer.</li>
<li>Fix RST renderer for block quotes nested in lists.</li>
<li>Avoid generated heading ID collisions in TOC.</li>
<li>Harden URL, image, figure, and include directive handling.</li>
<li>Fix quadratic scans in inline links, reference links, and formatting markers.</li>
<li>Fix math escaping, currency pattern matching, and cross-line matching.</li>
</ul>
<h2>Version 3.2.1</h2>
<p><strong>Released on May 3, 2026</strong></p>
<ul>
<li>Escape link in <code>render_toc_ul</code>.</li>
<li>Escape text in math plugin.</li>
</ul>
<!-- raw HTML omitted -->
</blockquote>
<p>... (truncated)</p>
</details>
<details>
<summary>Commits</summary>
<ul>
<li><a href=""><code>060f73a</code></a> chore: release 3.3.3</li>
<li><a href=""><code>ae7e9d5</code></a> perf: improve for footnotes, ruby and spoiler</li>
<li><a href=""><code>c2228a2</code></a> perf: improve performance for math and formatting plugins</li>
<li><a href=""><code>e001d51</code></a> perf: improve link label parsing performance</li>
<li><a href=""><code>cca5ee6</code></a> fix: add image max depth</li>
<li><a href=""><code>0938fb7</code></a> fix: add max_emphasis_depth</li>
<li><a href=""><code>9946c92</code></a> tests: update dealine time for pypy</li>
<li><a href=""><code>4009f67</code></a> fix: use SAFE_PROTOCOLS instead of HARMFUL_PROTOCOLS</li>
<li><a href=""><code>3025549</code></a> Merge pull request <a href="">#462</a> from Sanjays2402/fix/markdown-renderer-escape-emphasis</li>
<li><a href=""><code>b042996</code></a> fix: escape literal emphasis markers in MarkdownRenderer</li>
<li>Additional commits viewable in <a href="https://github.com/lepture/mistune/compare/v0.8.4...v3.3.3">compare view</a></li>
</ul>
</details>
<br />

[![Dependabot compatibility score](https://dependabot-badges.githubapp.com/badges/compatibility_score?dependency-name=mistune&package-manager=uv&previous-version=0.8.4&new-version=3.3.3)](https://docs.github.com/en/github/managing-security-vulnerabilities/about-dependabot-security-updates#about-compatibility-scores)

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