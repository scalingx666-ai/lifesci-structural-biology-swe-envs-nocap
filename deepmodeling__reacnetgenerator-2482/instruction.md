# Issue

**Title:** build(deps-dev): bump postcss from 8.5.23 to 8.5.28 in /reacnetgenerator/static/webpack

## Description

Bumps [postcss](https://github.com/postcss/postcss) from 8.5.23 to 8.5.28.
<details>
<summary>Release notes</summary>
<p><em>Sourced from <a href="https://github.com/postcss/postcss/releases">postcss's releases</a>.</em></p>
<blockquote>
<h2>8.5.28</h2>
<ul>
<li>Fixes types regression.</li>
</ul>
<h2>8.5.27</h2>
<ul>
<li>Fixed removing any comments starting with <code>/*#</code> (by <a href="https://github.com/dylanpulver"><code>@​dylanpulver</code></a>).</li>
<li>Fixed <code>*</code> hack before a comment in Custom Properties (by <a href="https://github.com/Jaybhade"><code>@​Jaybhade</code></a>).</li>
<li>Fixed empty values in the middle of <code>list.comma()</code> (by <a href="https://github.com/MahinAnowar"><code>@​MahinAnowar</code></a>).</li>
<li>Fixed whitespace-only values in <code>list.space()</code> (by <a href="https://github.com/MahinAnowar"><code>@​MahinAnowar</code></a>).</li>
<li>Fixed rule’s end position on space before semicolon (by <a href="https://github.com/maximilliangrand"><code>@​maximilliangrand</code></a>).</li>
<li>Fixed types (by <a href="https://github.com/romainmenke"><code>@​romainmenke</code></a>).</li>
<li>Fixed Chinese text in deprecation warning (by <a href="https://github.com/Jesse205"><code>@​Jesse205</code></a>).</li>
</ul>
<h2>8.5.26</h2>
<ul>
<li>Fixed <code>list.split()</code> regression (by <a href="https://github.com/lazerg"><code>@​lazerg</code></a>).</li>
<li>Track symlinks in path protection in source map loading (by <a href="https://github.com/drengir1"><code>@​drengir1</code></a>).</li>
</ul>
<h2>8.5.25</h2>
<ul>
<li>Fixed 8.5.17 visitor regression.</li>
<li>Fixed <code>list.split()</code> for non-string values (by <a href="https://github.com/amir-rezaei"><code>@​amir-rezaei</code></a>).</li>
</ul>
<h2>8.5.24</h2>
<ul>
<li>Preserve the BOM after the processing (by <a href="https://github.com/hdimer"><code>@​hdimer</code></a>).</li>
</ul>
</blockquote>
</details>
<details>
<summary>Changelog</summary>
<p><em>Sourced from <a href="https://github.com/postcss/postcss/blob/main/CHANGELOG.md">postcss's changelog</a>.</em></p>
<blockquote>
<h2>8.5.28</h2>
<ul>
<li>Fixes types regression.</li>
</ul>
<h2>8.5.27</h2>
<ul>
<li>Fixed removing any comments starting with <code>/*#</code> (by <a href="https://github.com/dylanpulver"><code>@​dylanpulver</code></a>).</li>
<li>Fixed <code>*</code> hack before a comment in Custom Properties (by <a href="https://github.com/Jaybhade"><code>@​Jaybhade</code></a>).</li>
<li>Fixed empty values in the middle of <code>list.comma()</code> (by <a href="https://github.com/MahinAnowar"><code>@​MahinAnowar</code></a>).</li>
<li>Fixed whitespace-only values in <code>list.space()</code> (by <a href="https://github.com/MahinAnowar"><code>@​MahinAnowar</code></a>).</li>
<li>Fixed rule’s end position on space before semicolon (by <a href="https://github.com/maximilliangrand"><code>@​maximilliangrand</code></a>).</li>
<li>Fixed types (by <a href="https://github.com/romainmenke"><code>@​romainmenke</code></a>).</li>
<li>Fixed Chinese text in deprecation warning (by <a href="https://github.com/Jesse205"><code>@​Jesse205</code></a>).</li>
</ul>
<h2>8.5.26</h2>
<ul>
<li>Fixed <code>list.split()</code> regression (by <a href="https://github.com/lazerg"><code>@​lazerg</code></a>).</li>
<li>Track symlinks in path protection in source map loading (by <a href="https://github.com/drengir1"><code>@​drengir1</code></a>).</li>
</ul>
<h2>8.5.25</h2>
<ul>
<li>Fixed 8.5.17 visitor regression.</li>
<li>Fixed <code>list.split()</code> for non-string values (by <a href="https://github.com/amir-rezaei"><code>@​amir-rezaei</code></a>).</li>
</ul>
<h2>8.5.24</h2>
<ul>
<li>Preserve the BOM after the processing (by <a href="https://github.com/hdimer"><code>@​hdimer</code></a>).</li>
</ul>
</blockquote>
</details>
<details>
<summary>Commits</summary>
<ul>
<li><a href=""><code>e544bff</code></a> Release 8.5.28 version</li>
<li><a href=""><code>f8fc252</code></a> Typo</li>
<li><a href=""><code>5039fd7</code></a> Add missed release notes</li>
<li><a href=""><code>ae40ca4</code></a> Release 8.5.27 version</li>
<li><a href=""><code>62b1626</code></a> Fix linter</li>
<li><a href=""><code>1dba938</code></a> Update dependencies</li>
<li><a href=""><code>3e82edc</code></a> Keep non-annotation comments when the processor has no plugins (<a href="">#2150</a>)</li>
<li><a href=""><code>6d23bc3</code></a> Fix link</li>
<li><a href=""><code>508e997</code></a> Add GitHub Sponsors link</li>
<li><a href=""><code>e993739</code></a> Add CodeRabbit sponsor (<a href="">#2145</a>)</li>
<li>Additional commits viewable in <a href="https://github.com/postcss/postcss/compare/8.5.23...8.5.28">compare view</a></li>
</ul>
</details>
<br />

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `a276b6b48eac`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.