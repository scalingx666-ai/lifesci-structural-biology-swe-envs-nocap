# Issue

**Title:** Bump plotly from 6.9.0 to 7.0.0

## Description

Bumps [plotly](https://github.com/plotly/plotly.py) from 6.9.0 to 7.0.0.
<details>
<summary>Release notes</summary>
<p><em>Sourced from <a href="https://github.com/plotly/plotly.py/releases">plotly's releases</a>.</em></p>
<blockquote>
<h2>v7.0.0</h2>
<h3>Fixed</h3>
<ul>
<li>Fix <code>hex_to_rgb</code> parsing of 3-digit shorthand hexadecimal colors such as <code>#FFF</code> [<a href="">#5662</a>], with thanks to <a href="https://github.com/genrichez"><code>@​genrichez</code></a> for the contribution!</li>
<li>Improve <code>px.*_map()</code> auto-fitting behavior when <code>zoom</code> and <code>center</code> are not specified [<a href="">#5686</a>]</li>
<li>Add <code>&lt;!doctype html&gt;</code> to the <code>to_html()</code> template to comply with modern web standards [<a href="">#5693</a>], with thanks to <a href="https://github.com/mishrakushal"><code>@​mishrakushal</code></a> for the contribution!</li>
<li>Apply <code>histfunc</code>/<code>z</code> aggregation to <code>marginal_x</code>/<code>marginal_y=&quot;histogram&quot;</code> subplots in <code>density_heatmap</code>/<code>density_contour</code>, instead of always showing raw bin counts [<a href="">#3521</a>], with thanks to <a href="https://github.com/lucasjamar"><code>@​lucasjamar</code></a> for the contribution!</li>
<li>Fix <code>mpl_to_plotly</code> silently dropping matplotlib path collections in data coordinates (such as violin plots, pcolor, event plots, stack plots, fill_between, and stem plots) by rendering them as filled polygons or lines [<a href="">#5702</a>], with thanks to <a href="https://github.com/robertoffmoura"><code>@​robertoffmoura</code></a> for the contribution!</li>
</ul>
<h3>Removed</h3>
<ul>
<li>Remove the deprecated Figure Factory functions <code>create_2d_density</code>, <code>create_annotated_heatmap</code>, <code>create_bullet</code>, <code>create_candlestick</code>, <code>create_choropleth</code>, <code>create_distplot</code>, <code>create_facet_grid</code>, <code>create_gantt</code>, <code>create_hexbin_mapbox</code>, <code>create_ohlc</code>, <code>create_scatterplotmatrix</code>, and <code>create_violin</code> [<a href="">#5627</a>]</li>
<li>Remove support for Kaleido versions less than v1.0.0 for static image generation [<a href="">#5677</a>]</li>
<li>Remove support for Orca for static image generation [<a href="">#5677</a>]</li>
<li>Remove <code>engine</code> argument from functions <code>fig.write_image()</code>,<code>fig.to_image()</code>, <code>pio.write_image()</code>, <code>pio.write_images()</code>, <code>pio.to_image()</code>, <code>pio.full_figure_for_development()</code>, and from renderer constructors [<a href="">#5677</a>]</li>
</ul>
<h3>Updated</h3>
<ul>
<li>Update plotly.js from version 3.6.0 to version 4.0.0 [<a href="">#5673</a>]. This is a major-version release with many changes. See the <a href="https://github.com/plotly/plotly.js/releases/tag/v4.0.0">plotly.js release notes</a> for the full list. The most significant changes include:
<ul>
<li>Add <code>quiver</code> trace type to visualize vector fields using arrows [<a href="">#7710</a>, <a href="">#7945</a>]</li>
<li>Add &quot;Share Chart&quot; modebar button for generating a chart-sharing link via Plotly Cloud [<a href="">#7909</a>]</li>
<li>Remove <code>scattermapbox</code>, <code>choroplethmapbox</code>, <code>densitymapbox</code> trace types, the <code>mapbox</code> subplot, and the <code>mapboxAccessToken</code> config option [<a href="">#7860</a>]. Use the equivalent <code>*map</code> traces instead.
<ul>
<li>The corresponding <code>graph_objects</code> and Plotly Express functions have also been removed in plotly.py; use the <code>map</code> versions instead</li>
</ul>
</li>
<li>Drop support for MathJax v2, and add support for v4 [<a href="">#7898</a>]. MathJax is the JavaScript library used for rendering mathematical equations in plotly charts.</li>
<li>Switch color processing library from <a href="https://github.com/bgrins/TinyColor">TinyColor</a> to <a href="https://culorijs.org">culori</a> [<a href="">#7536</a>, <a href="">#7962</a>]. There are some changes to supported color string formats as a result:
<ul>
<li><code>rgb()</code>/<code>rgba()</code> strings with decimal 0–1 fractions are no longer supported</li>
<li><code>hsv()</code> color strings are no longer supported</li>
<li>Strings with invalid syntax such as <code>hsl(120, 50% 50%)</code> are no longer supported</li>
<li>New supported formats: <code>'#ff0000aa'</code>, <code>'#f00a'</code>, <code>'rgb(255 0 0)'</code>, <code>'rgba(255 0 0 / 0.5)'</code>, <code>'hsl(0 100% 50% / 0.5)'</code>, <code>'hsla(0, 100%, 50%, 0.5)'</code>, <code>'hwb(0, 0%, 0%)'</code>, <code>lab()</code>, <code>lch()</code>, <code>oklab()</code>, <code>oklch()</code>, <code>color()</code>, <code>hsl(0.5turn 60% 40%)</code>, <code>hsl(none 60% 40%)</code></li>
</ul>
</li>
<li>Replace <code>country-regex</code> with <code>country-iso-search</code> to search for country names in choropleth, scattergeo traces [<a href="">#7856</a>]. Most country names are handled exactly the same; a small number of legacy entries have been removed.</li>
<li>Change <code>layout.geo.fitbounds</code> default from <code>false</code> to <code>'locations'</code> [<a href="">#7895</a>]. <code>geo</code> subplots will now auto-fit the initial view to the trace data by default.</li>
<li>Dynamically compute <code>center</code> and <code>zoom</code> values for <code>scattermap</code> and <code>densitymap</code> traces. The initial map view will now auto-fit to the trace data by default. Add <code>layout.map.fitbounds</code> attribute (default <code>'locations'</code>) to enable or disable auto-fitting behavior [<a href="">#7884</a>, <a href="">#7913</a>]</li>
<li>Fix GeoJSON bounding-box computation for <code>choropleth</code> and <code>scattergeo</code> traces whose geometry crosses the antimeridian [<a href="">#7891</a>]</li>
</ul>
</li>
</ul>
<h2>v7.0.0rc0</h2>
<h3>Removed</h3>
<ul>
<li>Remove the deprecated Figure Factory functions <code>create_2d_density</code>, <code>create_annotated_heatmap</code>, <code>create_bullet</code>, <code>create_candlestick</code>, <code>create_choropleth</code>, <code>create_distplot</code>, <code>create_facet_grid</code>, <code>create_gantt</code>, <code>create_hexbin_mapbox</code>, <code>create_ohlc</code>, <code>create_scatterplotmatrix</code>, and <code>create_violin</code> [<a href="">#5627</a>]</li>
<li>Remove support for Kaleido versions less than v1.0.0 for static image generation [<a href="">#5677</a>]</li>
<li>Remove support for Orca for static image generation [<a href="">#5677</a>]</li>
<li>Remove <code>engine</code> argument from functions <code>fig.write_image()</code>,<code>fig.to_image()</code>, <code>pio.write_image()</code>, <code>pio.write_images()</code>, <code>pio.to_image()</code>, <code>pio.full_figure_for_development()</code>, and from renderer constructors [<a href="">#5677</a>]</li>
</ul>
<h3>Fixed</h3>
<ul>
<li>Raise a clear <code>ValueError</code> when an unsupported marginal plot type is passed to Plotly Express, instead of failing later with a cryptic <code>'NoneType' object has no attribute 'constructor'</code> message [<a href="">#5625</a>], with thanks to <a href="https://github.com/eugen-goebel"><code>@​eugen-goebel</code></a> for the contribution!</li>
</ul>
<h3>Updated</h3>
<ul>
<li>Update plotly.js from version 3.6.0 to version 4.0.0-rc.0 [<a href="">#5673</a>]. This is a major-version release candidate with many changes. See the <a href="https://github.com/plotly/plotly.js/releases/tag/v4.0.0-rc.0">plotly.js release notes</a> for the full list. The most significant changes include:
<ul>
<li>Add <code>quiver</code> trace type to visualize vector fields using arrows [<a href="">#7710</a>], with thanks to <a href="https://github.com/degzhaus"><code>@​degzhaus</code></a> for the contribution!</li>
<li>Add &quot;Share Chart&quot; modebar button for generating a chart-sharing link via Plotly Cloud [<a href="">#7909</a>]</li>
<li>Remove <code>scattermapbox</code>, <code>choroplethmapbox</code>, <code>densitymapbox</code> trace types, the <code>mapbox</code> subplot, and the <code>mapboxAccessToken</code> config option [<a href="">#7860</a>]. Use the equivalent <code>*map</code> traces instead.
<ul>
<li>The corresponding <code>graph_objects</code> and Plotly Express functions have also been removed in plotly.py; use the <code>map</code> versions instead</li>
</ul>
</li>
<li>Drop support for MathJax v2, and add support for v4 [<a href="">#7898</a>]. MathJax is the JavaScript library used for rendering mathematical equations in plotly charts.</li>
<li>Switch color processing library from <a href="https://github.com/bgrins/TinyColor">TinyColor</a> to <a href="https://github.com/Qix-/color">color</a> [<a href="">#7536</a>]. There are some changes to supported color string formats as a result:
<ul>
<li><code>rgb()</code>/<code>rgba()</code> strings with decimal 0–1 fractions are no longer supported</li>
</ul>
</li>
</ul>
</li>
</ul>
<!-- raw HTML omitted -->
</blockquote>
<p>... (truncated)</p>
</details>
<details>
<summary>Changelog</summary>
<p><em>Sourced from <a href="https://github.com/plotly/plotly.py/blob/main/CHANGELOG.md">plotly's changelog</a>.</em></p>
<blockquote>
<h2>[7.0.0] - 2026-08-25</h2>
<h3>Fixed</h3>
<ul>
<li>Fix <code>hex_to_rgb</code> parsing of 3-digit shorthand hexadecimal colors such as <code>#FFF</code> [<a href="">#5662</a>], with thanks to <a href="https://github.com/genrichez"><code>@​genrichez</code></a> for the contribution!</li>
<li>Improve <code>px.*_map()</code> auto-fitting behavior when <code>zoom</code> and <code>center</code> are not specified [<a href="">#5686</a>]</li>
<li>Add <code>&lt;!doctype html&gt;</code> to the <code>to_html()</code> template to comply with modern web standards [<a href="">#5693</a>], with thanks to <a href="https://github.com/mishrakushal"><code>@​mishrakushal</code></a> for the contribution!</li>
<li>Apply <code>histfunc</code>/<code>z</code> aggregation to <code>marginal_x</code>/<code>marginal_y=&quot;histogram&quot;</code> subplots in <code>density_heatmap</code>/<code>density_contour</code>, instead of always showing raw bin counts [<a href="">#3521</a>], with thanks to <a href="https://github.com/lucasjamar"><code>@​lucasjamar</code></a> for the contribution!</li>
<li>Fix <code>mpl_to_plotly</code> silently dropping matplotlib path collections in data coordinates (such as violin plots, pcolor, event plots, stack plots, fill_between, and stem plots) by rendering them as filled polygons or lines [<a href="">#5702</a>], with thanks to <a href="https://github.com/robertoffmoura"><code>@​robertoffmoura</code></a> for the contribution!</li>
</ul>
<h3>Updated</h3>
<ul>
<li>Update plotly.js from version 3.6.0 to version 4.0.0 [<a href="">#5673</a>]. This is a major-version release with many changes. See the <a href="https://github.com/plotly/plotly.js/releases/tag/v4.0.0">plotly.js release notes</a> for the full list. The most significant changes include:
<ul>
<li>Add <code>quiver</code> trace type to visualize vector fields using arrows [<a href="">#7710</a>, <a href="">#7945</a>]</li>
<li>Add &quot;Share Chart&quot; modebar button for generating a chart-sharing link via Plotly Cloud [<a href="">#7909</a>]</li>
<li>Remove <code>scattermapbox</code>, <code>choroplethmapbox</code>, <code>densitymapbox</code> trace types, the <code>mapbox</code> subplot, and the <code>mapboxAccessToken</code> config option [<a href="">#7860</a>]. Use the equivalent <code>*map</code> traces instead.
<ul>
<li>The corresponding <code>graph_objects</code> and Plotly Express functions have also been removed in plotly.py; use the <code>map</code> versions instead</li>
</ul>
</li>
<li>Drop support for MathJax v2, and add support for v4 [<a href="">#7898</a>]. MathJax is the JavaScript library used for rendering mathematical equations in plotly charts.</li>
<li>Switch color processing library from <a href="https://github.com/bgrins/TinyColor">TinyColor</a> to <a href="https://culorijs.org">culori</a> [<a href="">#7536</a>, <a href="">#7962</a>]. There are some changes to supported color string formats as a result:
<ul>
<li><code>rgb()</code>/<code>rgba()</code> strings with decimal 0–1 fractions are no longer supported</li>
<li><code>hsv()</code> color strings are no longer supported</li>
<li>Strings with invalid syntax such as <code>hsl(120, 50% 50%)</code> are no longer supported</li>
<li>New supported formats: <code>'#ff0000aa'</code>, <code>'#f00a'</code>, <code>'rgb(255 0 0)'</code>, <code>'rgba(255 0 0 / 0.5)'</code>, <code>'hsl(0 100% 50% / 0.5)'</code>, <code>'hsla(0, 100%, 50%, 0.5)'</code>, <code>'hwb(0 0% 0%)'</code>, <code>lab()</code>, <code>lch()</code>, <code>oklab()</code>, <code>oklch()</code>, <code>color()</code>, <code>hsl(0.5turn 60% 40%)</code>, <code>hsl(none 60% 40%)</code></li>
</ul>
</li>
<li>Replace <code>country-regex</code> with <code>country-iso-search</code> to search for country names in choropleth, scattergeo traces [<a href="">#7856</a>]. Most country names are handled exactly the same; a small number of legacy entries have been removed.</li>
<li>Change <code>layout.geo.fitbounds</code> default from <code>false</code> to <code>'locations'</code> [<a href="">#7895</a>]. <code>geo</code> subplots will now auto-fit the initial view to the trace data by default.</li>
<li>Dynamically compute <code>center</code> and <code>zoom</code> values for <code>scattermap</code> and <code>densitymap</code> traces. The initial map view will now auto-fit to the trace data by default. Add <code>layout.map.fitbounds</code> attribute (default <code>'locations'</code>) to enable or disable auto-fitting behavior [<a href="">#7884</a>, <a href="">#7913</a>]</li>
<li>Fix GeoJSON bounding-box computation for <code>choropleth</code> and <code>scattergeo</code> traces whose geometry crosses the antimeridian [<a href="">#7891</a>]</li>
</ul>
</li>
</ul>
<h2>[7.0.0rc0] - 2026-07-29</h2>
<h3>Removed</h3>
<ul>
<li>Remove the deprecated Figure Factory functions <code>create_2d_density</code>, <code>create_annotated_heatmap</code>, <code>create_bullet</code>, <code>create_candlestick</code>, <code>create_choropleth</code>, <code>create_distplot</code>, <code>create_facet_grid</code>, <code>create_gantt</code>, <code>create_hexbin_mapbox</code>, <code>create_ohlc</code>, <code>create_scatterplotmatrix</code>, and <code>create_violin</code> [<a href="">#5627</a>]</li>
<li>Remove support for Kaleido versions less than v1.0.0 for static image generation [<a href="">#5677</a>]</li>
<li>Remove support for Orca for static image generation [<a href="">#5677</a>]</li>
<li>Remove <code>engine</code> argument from functions <code>fig.write_image()</code>,<code>fig.to_image()</code>, <code>pio.write_image()</code>, <code>pio.write_images()</code>, <code>pio.to_image()</code>, <code>pio.full_figure_for_development()</code>, and from renderer constructors [<a href="">#5677</a>]</li>
</ul>
<h3>Updated</h3>
<ul>
<li>Update plotly.js from version 3.6.0 to version 4.0.0-rc.0 [<a href="">#5673</a>]. This is a major-version release candidate with many changes. See the <a href="https://github.com/plotly/plotly.js/releases/tag/v4.0.0-rc.0">plotly.js release notes</a> for the full list. The most significant changes include:
<ul>
<li>Add <code>quiver</code> trace type to visualize vector fields using arrows [<a href="">#7710</a>]</li>
<li>Add &quot;Share Chart&quot; modebar button for generating a chart-sharing link via Plotly Cloud [<a href="">#7909</a>]</li>
<li>Remove <code>scattermapbox</code>, <code>choroplethmapbox</code>, <code>densitymapbox</code> trace types, the <code>mapbox</code> subplot, and the <code>mapboxAccessToken</code> config option [<a href="">#7860</a>]. Use the equivalent <code>*map</code> traces instead.
<ul>
<li>The corresponding <code>graph_objects</code> and Plotly Express functions have also been removed in plotly.py; use the <code>map</code> versions instead</li>
</ul>
</li>
<li>Drop support for MathJax v2, and add support for v4 [<a href="">#7898</a>]. MathJax is the JavaScript library used for rendering mathematical equations in plotly charts.</li>
<li>Switch color processing library from <a href="https://github.com/bgrins/TinyColor">TinyColor</a> to <a href="https://github.com/Qix-/color">color</a> [<a href="">#7536</a>]. There are some changes to supported color string formats as a result:
<ul>
<li><code>rgb()</code>/<code>rgba()</code> strings with decimal 0–1 fractions are no longer supported</li>
<li><code>hsv()</code> color strings are no longer supported</li>
<li>New supported formats: <code>'#ff0000aa'</code>, <code>'#f00a'</code>, <code>'rgb(255 0 0)'</code>, <code>'rgba(255 0 0 / 0.5)'</code>, <code>'hsl(0 100% 50% / 0.5)'</code>, <code>'hsla(0, 100%, 50%, 0.5)'</code>, <code>'hwb(0, 0%, 0%)'</code></li>
</ul>
</li>
<li>Replace <code>country-regex</code> with <code>country-iso-search</code> to search for country names in choropleth, scattergeo traces [<a href="">#7856</a>]. Most country names are handled exactly the same; a small number of legacy entries have been removed.</li>
<li>Change <code>layout.geo.fitbounds</code> default from <code>false</code> to <code>'locations'</code> [<a href="">#7895</a>]. <code>geo</code> subplots will now auto-fit the initial view to the trace data by default.</li>
<li>Dynamically compute <code>center</code> and <code>zoom</code> values for <code>scattermap</code> and <code>densitymap</code> traces. The initial map view will now auto-fit to the trace data by default. Add <code>layout.map.fitbounds</code> attribute (default <code>'locations'</code>) to enable or disable auto-fitting behavior [<a href="">#7884</a>, <a href="">#7913</a>]</li>
<li>Fix GeoJSON bounding-box computation for <code>choropleth</code> and <code>scattergeo</code> traces whose geometry crosses the antimeridian [<a href="">#7891</a>]</li>
</ul>
</li>
</ul>
</blockquote>
</details>
<details>
<summary>Commits</summary>
<ul>
<li><a href=""><code>73c4745</code></a> version changes for v7.0.0</li>
<li><a href=""><code>c58eb29</code></a> Merge pull request <a href="">#5712</a> from plotly/v7.0</li>
<li><a href=""><code>45ecea4</code></a> Merge pull request <a href="">#5711</a> from plotly/bump-plotlyjs-v4.0.0</li>
<li><a href=""><code>6bd0b40</code></a> update changelog</li>
<li><a href=""><code>860b4f7</code></a> Apply suggestion from <a href="https://github.com/camdecoster"><code>@​camdecoster</code></a></li>
<li><a href=""><code>f50f9ff</code></a> update changelog</li>
<li><a href=""><code>367886b</code></a> change plotly.js master references to main</li>
<li><a href=""><code>bb7d2de</code></a> update color validator for new color formats</li>
<li><a href=""><code>11338e1</code></a> update plotly.js to v4.0.0 and re-run codegen and js builds</li>
<li><a href=""><code>939cd69</code></a> Merge branch 'main' into v7.0</li>
<li>Additional commits viewable in <a href="https://github.com/plotly/plotly.py/compare/v6.9.0...v7.0.0">compare view</a></li>
</ul>
</details>
<br />

[![Dependabot compatibility score](https://dependabot-badges.githubapp.com/badges/compatibility_score?dependency-name=plotly&package-manager=pip&previous-version=6.9.0&new-version=7.0.0)](https://docs.github.com/en/github/managing-security-vulnerabilities/about-dependabot-security-updates#about-compatibility-scores)

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

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `ecc3eff56b1c`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.