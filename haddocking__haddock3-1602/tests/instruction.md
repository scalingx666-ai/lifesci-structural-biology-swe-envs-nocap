# Issue

**Title:** Bump plotly from 6.6.0 to 6.8.0

## Description

Bumps [plotly](https://github.com/plotly/plotly.py) from 6.6.0 to 6.8.0.
<details>
<summary>Release notes</summary>
<p><em>Sourced from <a href="https://github.com/plotly/plotly.py/releases">plotly's releases</a>.</em></p>
<blockquote>
<h2>v6.8.0</h2>
<h3>Added</h3>
<ul>
<li>Add optional <code>font</code> parameter for <code>make_subplots</code> [<a href="">#5393</a>], with thanks to <a href="https://github.com/Zomtir"><code>@​Zomtir</code></a> for the contribution!</li>
</ul>
<h3>Fixed</h3>
<ul>
<li>Fix issue where user-specified <code>color_continuous_scale</code> was ignored when template had <code>autocolorscale=True</code> [<a href="">#5439</a>], with thanks to <a href="https://github.com/antonymilne"><code>@​antonymilne</code></a> for the contribution!</li>
<li>Use presence of <code>COLAB_NOTEBOOK_ID</code> env var to enable Colab renderer instead of testing import of <code>google.colab</code> [<a href="">#5473</a>], with thanks to <a href="https://github.com/kevineger"><code>@​kevineger</code></a> for the contribution!</li>
<li>Fix incorrect annotation placement for <code>add_vline</code>, <code>add_hline</code>, <code>add_vrect</code>, and <code>add_hrect</code> on datetime axes [<a href="">#5508</a>], with thanks to <a href="https://github.com/mosh3eb"><code>@​mosh3eb</code></a> for the contribution!</li>
<li>Update tests to be compatible with numpy 2.4 [<a href="">#5522</a>], with thanks to <a href="https://github.com/thunze"><code>@​thunze</code></a> for the contribution!</li>
<li>Fix issue where <code>js/</code> directory was unintentionally installed as a top-level Python package when installing <code>plotly</code> [<a href="">#5587</a>]</li>
<li>Add default headers to be passed in to Kaleido v1.3.0 to avoid blocked Open Street Map tiles [<a href="">#5588</a>]</li>
<li>Propagate the requested <code>default_height</code>/<code>default_width</code> to the outer wrapper div produced by <code>to_html</code> so that responsive (percentage) dimensions inherit from a sized parent container instead of collapsing to the plotly.js 450px fallback [<a href="">#5591</a>], with thanks to <a href="https://github.com/SharadhNaidu"><code>@​SharadhNaidu</code></a> for the contribution!</li>
</ul>
<h3>Updated</h3>
<ul>
<li>The <code>__eq__</code> method for  <code>graph_objects</code> classes now returns <code>NotImplemented</code> to give the other operand an opportunity to handle the comparison [<a href="">#5547</a>], with thanks to <a href="https://github.com/RazerM"><code>@​RazerM</code></a> for the contribution!</li>
<li>Update plotly.js from version 3.5.0 to version 3.6.0. See the plotly.js <a href="https://github.com/plotly/plotly.js/releases/tag/v3.6.0">release notes</a> for more information [<a href="">#5608</a>]. Notable changes include:
<ul>
<li>Add support for arrays for the pie property <code>legendrank</code>, so that it can be configured per slice [<a href="">#7723</a>]</li>
<li>Add <code>hoversort</code> layout attribute to sort unified hover label items by value [<a href="">#7734</a>]</li>
</ul>
</li>
</ul>
<h2>v6.7.0</h2>
<h3>Added</h3>
<ul>
<li>Add <code>facet_row</code> support to <code>px.imshow</code> for creating subplots along an additional dimension [<a href="">#5445</a>], with thanks to <a href="https://github.com/FBumann"><code>@​FBumann</code></a> for the contribution!</li>
</ul>
<h3>Fixed</h3>
<ul>
<li>Update <code>numpy.percentile</code> syntax to stop using deprecated alias [<a href="">#5483</a>], with thanks to <a href="https://github.com/Mr-Neutr0n"><code>@​Mr-Neutr0n</code></a> for the contribution!
<ul>
<li><code>numpy</code> with a version less than 1.22 is no longer supported.</li>
</ul>
</li>
<li>Handle empty <code>px.histogram</code> by skipping <code>None</code> label in hover template [<a href="">#5535</a>], with thanks to <a href="https://github.com/tysoncung"><code>@​tysoncung</code></a> for the contribution!</li>
</ul>
<h3>Updated</h3>
<ul>
<li>Update plotly.js from version 3.4.0 to version 3.5.0. See the plotly.js <a href="https://github.com/plotly/plotly.js/releases/tag/v3.5.0">release notes</a> for more information. [<a href="">#5565</a>]. Notable changes include:
<ul>
<li>Add <code>hoveranywhere</code> and <code>clickanywhere</code> layout attributes to enable emitting hover and click events anywhere in the plot area, not just over traces [<a href="">#7707</a>]</li>
<li>Add <code>displayNotifier</code> configuration property to set the display of notifier in the top right area of the viewport [<a href="">#7730</a>]</li>
<li>Update USA location lookup for <code>scattergeo</code> and <code>choropleth</code> traces to use both location names and abbreviations [<a href="">#7731</a>]</li>
</ul>
</li>
</ul>
</blockquote>
</details>
<details>
<summary>Changelog</summary>
<p><em>Sourced from <a href="https://github.com/plotly/plotly.py/blob/main/CHANGELOG.md">plotly's changelog</a>.</em></p>
<blockquote>
<h2>[6.8.0] - 2026-06-03</h2>
<h3>Added</h3>
<ul>
<li>Add optional <code>font</code> parameter for <code>make_subplots</code> [<a href="">#5393</a>], with thanks to <a href="https://github.com/Zomtir"><code>@​Zomtir</code></a> for the contribution!</li>
</ul>
<h3>Fixed</h3>
<ul>
<li>Fix issue where user-specified <code>color_continuous_scale</code> was ignored when template had <code>autocolorscale=True</code> [<a href="">#5439</a>], with thanks to <a href="https://github.com/antonymilne"><code>@​antonymilne</code></a> for the contribution!</li>
<li>Use presence of <code>COLAB_NOTEBOOK_ID</code> env var to enable Colab renderer instead of testing import of <code>google.colab</code> [<a href="">#5473</a>], with thanks to <a href="https://github.com/kevineger"><code>@​kevineger</code></a> for the contribution!</li>
<li>Fix incorrect annotation placement for <code>add_vline</code>, <code>add_hline</code>, <code>add_vrect</code>, and <code>add_hrect</code> on datetime axes [<a href="">#5508</a>], with thanks to <a href="https://github.com/mosh3eb"><code>@​mosh3eb</code></a> for the contribution!</li>
<li>Update tests to be compatible with numpy 2.4 [<a href="">#5522</a>], with thanks to <a href="https://github.com/thunze"><code>@​thunze</code></a> for the contribution!</li>
<li>Fix issue where <code>js/</code> directory was unintentionally installed as a top-level Python package when installing <code>plotly</code> [<a href="">#5587</a>]</li>
<li>Add default headers to be passed in to Kaleido v1.3.0 to avoid blocked Open Street Map tiles [<a href="">#5588</a>]</li>
<li>Propagate the requested <code>default_height</code>/<code>default_width</code> to the outer wrapper div produced by <code>to_html</code> so that responsive (percentage) dimensions inherit from a sized parent container instead of collapsing to the plotly.js 450px fallback [<a href="">#5591</a>], with thanks to <a href="https://github.com/SharadhNaidu"><code>@​SharadhNaidu</code></a> for the contribution!</li>
</ul>
<h3>Updated</h3>
<ul>
<li>The <code>__eq__</code> method for  <code>graph_objects</code> classes now returns <code>NotImplemented</code> to give the other operand an opportunity to handle the comparison [<a href="">#5547</a>], with thanks to <a href="https://github.com/RazerM"><code>@​RazerM</code></a> for the contribution!</li>
<li>Update plotly.js from version 3.5.0 to version 3.6.0. See the plotly.js <a href="https://github.com/plotly/plotly.js/releases/tag/v3.6.0">release notes</a> for more information [<a href="">#5608</a>]. Notable changes include:
<ul>
<li>Add support for arrays for the pie property <code>legendrank</code>, so that it can be configured per slice [<a href="">#7723</a>]</li>
<li>Add <code>hoversort</code> layout attribute to sort unified hover label items by value [<a href="">#7734</a>]</li>
</ul>
</li>
</ul>
<h2>[6.7.0] - 2026-04-09</h2>
<h3>Added</h3>
<ul>
<li>Add <code>facet_row</code> support to <code>px.imshow</code> for creating subplots along an additional dimension [<a href="">#5445</a>], with thanks to <a href="https://github.com/FBumann"><code>@​FBumann</code></a> for the contribution!</li>
</ul>
<h3>Fixed</h3>
<ul>
<li>Update <code>numpy.percentile</code> syntax to stop using deprecated alias [<a href="">#5483</a>], with thanks to <a href="https://github.com/Mr-Neutr0n"><code>@​Mr-Neutr0n</code></a> for the contribution!
<ul>
<li><code>numpy</code> with a version less than 1.22 is no longer supported.</li>
</ul>
</li>
<li>Handle empty <code>px.histogram</code> by skipping <code>None</code> label in hover template [<a href="">#5535</a>], with thanks to <a href="https://github.com/tysoncung"><code>@​tysoncung</code></a> for the contribution!</li>
</ul>
<h3>Updated</h3>
<ul>
<li>Update plotly.js from version 3.4.0 to version 3.5.0. See the plotly.js <a href="https://github.com/plotly/plotly.js/releases/tag/v3.5.0">release notes</a> for more information. [<a href="">#5565</a>]. Notable changes include:
<ul>
<li>Add <code>hoveranywhere</code> and <code>clickanywhere</code> layout attributes to enable emitting hover and click events anywhere in the plot area, not just over traces [<a href="">#7707</a>]</li>
<li>Add <code>displayNotifier</code> configuration property to set the display of notifier in the top right area of the viewport [<a href="">#7730</a>]</li>
<li>Update USA location lookup for <code>scattergeo</code> and <code>choropleth</code> traces to use both location names and abbreviations [<a href="">#7731</a>]</li>
</ul>
</li>
</ul>
</blockquote>
</details>
<details>
<summary>Commits</summary>
<ul>
<li><a href=""><code>ea4eca8</code></a> Address PR feedback</li>
<li><a href=""><code>e57adbd</code></a> Fix broken example</li>
<li><a href=""><code>b8c2bf4</code></a> Update Jupyter Lab extension files</li>
<li><a href=""><code>2de1059</code></a> Update docs for release</li>
<li><a href=""><code>f94e304</code></a> Version changes for v6.8.0</li>
<li><a href=""><code>7f2eb35</code></a> Merge pull request <a href="">#5608</a> from plotly/cam/update-plotly.js-3.6.0</li>
<li><a href=""><code>f57cf96</code></a> Update command to run <code>npm install</code> for <code>updateplotlyjs</code></li>
<li><a href=""><code>1f26820</code></a> Update lock file</li>
<li><a href=""><code>8f699a3</code></a> chore: Update plotly.js to v3.6.0</li>
<li><a href=""><code>f0755e5</code></a> Merge pull request <a href="">#5605</a> from plotly/cam/pin-python-frontmatter</li>
<li>Additional commits viewable in <a href="https://github.com/plotly/plotly.py/compare/v6.6.0...v6.8.0">compare view</a></li>
</ul>
</details>
<br />

[![Dependabot compatibility score](https://dependabot-badges.githubapp.com/badges/compatibility_score?dependency-name=plotly&package-manager=pip&previous-version=6.6.0&new-version=6.8.0)](https://docs.github.com/en/github/managing-security-vulnerabilities/about-dependabot-security-updates#about-compatibility-scores)

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

</details>

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `ef3e38c61a3a`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.