# Issue

**Title:** Bump fonttools from 4.55.3 to 4.60.2

## Description

Bumps [fonttools](https://github.com/fonttools/fonttools) from 4.55.3 to 4.60.2.
<details>
<summary>Release notes</summary>
<p><em>Sourced from <a href="https://github.com/fonttools/fonttools/releases">fonttools's releases</a>.</em></p>
<blockquote>
<h2>4.60.2</h2>
<ul>
<li><strong>Backport release</strong> Same as 4.61.0 but without &quot;Drop support for EOL Python 3.9&quot; change to allow downstream projects still on Python 3.9 to avail of the security fix for CVE-2025-66034 (<a href="">#3994</a>, <a href="">#3999</a>).</li>
</ul>
<h2>4.60.1</h2>
<ul>
<li>[ufoLib] Reverted accidental method name change in <code>UFOReader.getKerningGroupConversionRenameMaps</code>
that broke compatibility with downstream projects like defcon (<a href="">#3948</a>, <a href="">#3947</a>, <a href="">robotools/defcon#478</a>).</li>
<li>[ufoLib] Added test coverage for <code>getKerningGroupConversionRenameMaps</code> method (<a href="">#3950</a>).</li>
<li>[subset] Don't try to subset BASE table; pass it through by default instead (<a href="">#3949</a>).</li>
<li>[subset] Remove empty BaseRecord entries in MarkBasePos lookups (<a href="">#3897</a>, <a href="">#3892</a>).</li>
<li>[subset] Add pruning for MarkLigPos and MarkMarkPos lookups (<a href="">#3946</a>).</li>
<li>[subset] Remove duplicate features when subsetting (<a href="">#3945</a>).</li>
<li>[Docs] Added documentation for the visitor module (<a href="">#3944</a>).</li>
</ul>
<h2>4.60.0</h2>
<ul>
<li>
<p>[pointPen] Allow <code>reverseFlipped</code> parameter of <code>DecomposingPointPen</code> to take a <code>ReverseFlipped</code> enum value to control whether/how to reverse contour direction of flipped components, in addition to the existing True/False. This allows to set <code>ReverseFlipped.ON_CURVE_FIRST</code> to ensure that the decomposed outline starts with an on-curve point before being reversed, for better consistency with other segment-oriented contour transformations. The change is backward compatible, and the default behavior hasn't changed (<a href="">#3934</a>).</p>
</li>
<li>
<p>[filterPen] Added <code>ContourFilterPointPen</code>, base pen for buffered contour operations, and <code>OnCurveStartPointPen</code> filter to ensure contours start with an on-curve point (<a href="">#3934</a>).</p>
</li>
<li>
<p>[cu2qu] Fixed difference in cython vs pure-python complex division by real number (<a href="">#3930</a>).</p>
</li>
<li>
<p>[varLib.avar] Refactored and added some new sub-modules and scripts (<a href="">#3926</a>).</p>
<ul>
<li><code>varLib.avar.build</code> module to build avar (and a missing fvar) binaries into a possibly empty TTFont,</li>
<li><code>varLib.avar.unbuild</code> module to print a .designspace snippet that would generate the same avar binary,</li>
<li><code>varLib.avar.map</code> module to take TTFont and do the mapping, in user/normalized space,</li>
<li><code>varLib.avar.plan</code> module moved from <code>varLib.avarPlanner</code>.</li>
</ul>
<p>The bare <code>fonttools varLib.avar</code> script is deprecated, in favour of <code>fonttools varLib.avar.build</code> (or <code>unbuild</code>).</p>
</li>
<li>
<p>[interpolatable] Clarify <code>linear_sum_assignment</code> backend options and minimal dependency usage (<a href="">#3927</a>).</p>
</li>
<li>
<p>[post] Speed up <code>build_psNameMapping</code> (<a href="">#3923</a>).</p>
</li>
<li>
<p>[ufoLib] Added typing annotations to fontTools.ufoLib (<a href="">#3875</a>).</p>
</li>
</ul>
<h2>4.59.2</h2>
<ul>
<li>[varLib] Clear <code>USE_MY_METRICS</code> component flags when inconsistent across masters (<a href="">#3912</a>).</li>
<li>[varLib.instancer] Avoid negative advance width/height values when instatiating HVAR/VVAR, (unlikely in well-behaved fonts) (<a href="">#3918</a>).</li>
<li>[subset] Fix shaping behaviour when pruning empty mark sets (<a href="">#3915</a>, <a href="">harfbuzz/harfbuzz#5499</a>).</li>
<li>[cu2qu] Fixed <code>dot()</code> product of perpendicular vectors not always returning exactly 0.0 in all Python implementations (<a href="">#3911</a>)</li>
<li>[varLib.instancer] Implemented fully-instantiating <code>avar2</code> fonts (<a href="">#3909</a>).</li>
<li>[feaLib] Allow float values in <code>VariableScalar</code>'s axis locations (<a href="">#3906</a>, <a href="">#3907</a>).</li>
<li>[cu2qu] Handle special case in <code>calc_intersect</code> for degenerate cubic curves where 3 to 4 control points are equal (<a href="">#3904</a>).</li>
</ul>
<h2>4.59.1</h2>
<ul>
<li>[featureVars] Update OS/2.usMaxContext if possible after addFeatureVariationsRaw (<a href="">#3894</a>).</li>
<li>[vhmtx] raise TTLibError('not enough data...') when hmtx/vmtx are truncated (<a href="">#3843</a>, <a href="">#3901</a>).</li>
<li>[feaLib] Combine duplicate features that have the same set of lookups regardless of the order in which those lookups are added to the feature (<a href="">#3895</a>).</li>
<li>[varLib] Deprecate <code>varLib.mutator</code> in favor of <code>varLib.instancer</code>. The latter provides equivalent full (static font) instancing in addition to partial VF instancing.<br />
CLI users should replace <code>fonttools varLib.mutator</code> with <code>fonttools varLib.instancer</code>. API users should migrate to <code>fontTools.varLib.instancer.instantiateVariableFont</code> (<a href="">#2680</a>).</li>
</ul>
<h2>4.59.0</h2>
<ul>
<li>Removed hard-dependency on pyfilesystem2 (<code>fs</code> package) from <code>fonttools[ufo]</code> extra. This is replaced by the <code>fontTools.misc.filesystem</code> package, a stdlib-only, drop-in replacement for the subset of the pyfilesystem2's API used by <code>fontTools.ufoLib</code>. The latter should continue to work with the upstream <code>fs</code> (we even test with/without). However, clients who wish to continue using <code>fs</code> can do so by depending on it directly instead of via the <code>fonttools[ufo]</code> extra (<a href="">#3885</a>, <a href="">#3620</a>).</li>
<li>[xmlWriter] Replace illegal XML characters (e.g. control or non-characters) with &quot;?&quot; when dumping to ttx (<a href="">#3868</a>, <a href="">#71</a>).</li>
<li>[varLib.hvar] Fixed vertical metrics fields copy/pasta error (<a href="">#3884</a>).</li>
<li>Micro optimizations in ttLib and sstruct modules (<a href="">#3878</a>, <a href="">#3879</a>).</li>
<li>[unicodedata] Add Garay script to RTL_SCRIPTS (<a href="">#3882</a>).</li>
</ul>
<!-- raw HTML omitted -->
</blockquote>
<p>... (truncated)</p>
</details>
<details>
<summary>Changelog</summary>
<p><em>Sourced from <a href="https://github.com/fonttools/fonttools/blob/main/NEWS.rst">fonttools's changelog</a>.</em></p>
<blockquote>
<h2>4.60.2 (released 2025-12-09)</h2>
<ul>
<li><strong>Backport release</strong> Same as 4.61.0 but without &quot;Drop support for EOL Python 3.9&quot; change to allow
downstream projects still on Python 3.9 to avail of the security fix for CVE-2025-66034 (<a href="">#3994</a>, <a href="">#3999</a>).</li>
</ul>
<h2>4.61.0 (released 2025-11-28)</h2>
<ul>
<li>[varLib.main]: <strong>SECURITY</strong> Only use basename(vf.filename) to prevent path traversal attacks when
running <code>fonttools varLib</code> command, or code which invokes <code>fonttools.varLib.main()</code>.
Fixes CVE-2025-66034, see:
<a href="https://github.com/fonttools/fonttools/security/advisories/GHSA-768j-98cg-p3fv">https://github.com/fonttools/fonttools/security/advisories/GHSA-768j-98cg-p3fv</a>.</li>
<li>[feaLib] Sort BaseLangSysRecords by tag (<a href="">#3986</a>).</li>
<li>Drop support for EOL Python 3.9 (<a href="">#3982</a>).</li>
<li>[instancer] Support --remove-overlaps for fonts with CFF2 table (<a href="">#3975</a>).</li>
<li>[CFF2ToCFF] Add --remove-overlaps option (<a href="">#3976</a>).</li>
<li>[feaLib] Raise an error for rsub with NULL target (<a href="">#3979</a>).</li>
<li>[bezierTools] Fix logic bug in curveCurveIntersections (<a href="">#3963</a>).</li>
<li>[feaLib] Error when condition sets have the same name (<a href="">#3958</a>).</li>
<li>[cu2qu.ufo] skip processing empty glyphs to support sparse kerning masters (<a href="">#3956</a>).</li>
<li>[unicodedata] Update to Unicode 17. Require <code>unicodedata2 &gt;= 17.0.0</code> when installed with 'unicode' extra.</li>
</ul>
<h2>4.60.1 (released 2025-09-29)</h2>
<ul>
<li>[ufoLib] Reverted accidental method name change in <code>UFOReader.getKerningGroupConversionRenameMaps</code>
that broke compatibility with downstream projects like defcon (<a href="">#3948</a>, <a href="">#3947</a>, <a href="">robotools/defcon#478</a>).</li>
<li>[ufoLib] Added test coverage for <code>getKerningGroupConversionRenameMaps</code> method (<a href="">#3950</a>).</li>
<li>[subset] Don't try to subset BASE table; pass it through by default instead (<a href="">#3949</a>).</li>
<li>[subset] Remove empty BaseRecord entries in MarkBasePos lookups (<a href="">#3897</a>, <a href="">#3892</a>).</li>
<li>[subset] Add pruning for MarkLigPos and MarkMarkPos lookups (<a href="">#3946</a>).</li>
<li>[subset] Remove duplicate features when subsetting (<a href="">#3945</a>).</li>
<li>[Docs] Added documentation for the visitor module (<a href="">#3944</a>).</li>
</ul>
<h2>4.60.0 (released 2025-09-17)</h2>
<ul>
<li>[pointPen] Allow <code>reverseFlipped</code> parameter of <code>DecomposingPointPen</code> to take a <code>ReverseFlipped</code>
enum value to control whether/how to reverse contour direction of flipped components, in addition to
the existing True/False. This allows to set <code>ReverseFlipped.ON_CURVE_FIRST</code> to ensure that
the decomposed outline starts with an on-curve point before being reversed, for better consistency
with other segment-oriented contour transformations. The change is backward compatible, and the
default behavior hasn't changed (<a href="">#3934</a>).</li>
<li>[filterPen] Added <code>ContourFilterPointPen</code>, base pen for buffered contour operations, and
<code>OnCurveStartPointPen</code> filter to ensure contours start with an on-curve point (<a href="">#3934</a>).</li>
<li>[cu2qu] Fixed difference in cython vs pure-python complex division by real number (<a href="">#3930</a>).</li>
<li>[varLib.avar] Refactored and added some new sub-modules and scripts (<a href="">#3926</a>).
<ul>
<li><code>varLib.avar.build</code> module to build avar (and a missing fvar) binaries into a possibly empty TTFont,</li>
<li><code>varLib.avar.unbuild</code> module to print a .designspace snippet that would generate the same avar binary,</li>
</ul>
</li>
</ul>
<!-- raw HTML omitted -->
</blockquote>
<p>... (truncated)</p>
</details>
<details>
<summary>Commits</summary>
<ul>
<li><a href=""><code>78ba5e8</code></a> Release 4.60.2</li>
<li><a href=""><code>c3f9979</code></a> macos-13 runner is no more, use macos-15-intel</li>
<li><a href=""><code>8016403</code></a> Revert &quot;Merge pull request <a href="">#3982</a> from fonttools/drop-py39&quot;</li>
<li><a href=""><code>e691e3b</code></a> Release 4.61.0</li>
<li><a href=""><code>c2d540f</code></a> Update NEWS.rst</li>
<li><a href=""><code>3859753</code></a> Update NEWS.rst</li>
<li><a href=""><code>26eb070</code></a> black</li>
<li><a href=""><code>5ff73af</code></a> Merge commit from fork</li>
<li><a href=""><code>a696d5b</code></a> varLib: only use the basename(vf.filename)</li>
<li><a href=""><code>b00bc45</code></a> varLib_test: test path traversal in variable-font filename</li>
<li>Additional commits viewable in <a href="https://github.com/fonttools/fonttools/compare/4.55.3...4.60.2">compare view</a></li>
</ul>
</details>
<br />

[![Dependabot compatibility score](https://dependabot-badges.githubapp.com/badges/compatibility_score?dependency-name=fonttools&package-manager=uv&previous-version=4.55.3&new-version=4.60.2)](https://docs.github.com/en/github/managing-security-vulnerabilities/about-dependabot-security-updates#about-compatibility-scores)

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
You can disable automated security fix PRs for this repo from the [Security Alerts page](https://github.com/atomicarchitects/datasets/network/alerts).

</details>

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `2a14154bf8b9`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.