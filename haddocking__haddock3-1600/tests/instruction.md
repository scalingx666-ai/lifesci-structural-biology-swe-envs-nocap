# Issue

**Title:** Bump hypothesis from 6.141.1 to 6.155.7

## Description

Bumps [hypothesis](https://github.com/HypothesisWorks/hypothesis) from 6.141.1 to 6.155.7.
<details>
<summary>Release notes</summary>
<p><em>Sourced from <a href="https://github.com/HypothesisWorks/hypothesis/releases">hypothesis's releases</a>.</em></p>
<blockquote>
<h2>Hypothesis for Python - version 6.152.9</h2>
<p>This release substantially improves our internal distribution for
generating integers. This release has the most visible effect on
&quot;integers()&quot;, but may incidentally improve other strategies which draw
integers internally.</p>
<p>Our integers distribution had two problems. First, it had jagged
discontinuities at certain values where we switched sampling
approaches. Second, it used a different distribution for bounded and
unbounded ranges, which resulted in &quot;st.integers()&quot; and
&quot;st.integers(-2<strong>64, 2</strong>64)&quot; producing very different distributions
despite being semantically similar.</p>
<p>We now use a smooth distribution for both &quot;st.integers()&quot; and
&quot;st.integers(a, b)&quot;, which fixes both of these issues. This should
substantially improve our testing power in certain cases.</p>
<p>The only way this release should be user-visible is that it finds more
bugs! If this release is user-visible in other ways - for example,
because it is slower, or produces a worse distribution in some cases -
please open an issue.</p>
<p><em><a href="https://hypothesis.readthedocs.io/en/latest/changelog.html#v6-152-9">The canonical version of these notes (with links) is on readthedocs.</a></em></p>
<h2>Hypothesis for Python - version 6.152.8</h2>
<p>This release drops support for end-of-life Django 4.2.</p>
<p><em><a href="https://hypothesis.readthedocs.io/en/latest/changelog.html#v6-152-8">The canonical version of these notes (with links) is on readthedocs.</a></em></p>
<h2>Hypothesis for Python - version 6.152.7</h2>
<p>This patch improves our type hints for &quot;.filter()&quot; to work with
&quot;typing.TypeGuard&quot;. For example:</p>
<p>from typing import TypeGuard</p>
<p>from hypothesis import strategies as st</p>
<p>def is_str(x: object) -&gt; TypeGuard[str]:
return isinstance(x, str)</p>
<p>s = st.from_type(object).filter(is_str)</p>
<h1>previously: SearchStrategy[object]</h1>
<h1>now: SearchStrategy[str]</h1>
<p>reveal_type(s)</p>
<p><em><a href="https://hypothesis.readthedocs.io/en/latest/changelog.html#v6-152-7">The canonical version of these notes (with links) is on readthedocs.</a></em></p>
<h2>Hypothesis for Python - version 6.152.6</h2>
<p>This patch adds a shrinking pass that tries natural text</p>
<!-- raw HTML omitted -->
</blockquote>
<p>... (truncated)</p>
</details>
<details>
<summary>Commits</summary>
<ul>
<li><a href=""><code>929e5fb</code></a> Bump hypothesis version to 6.155.7 and update changelog</li>
<li><a href=""><code>93ee3c9</code></a> Merge pull request <a href="">#4772</a> from Liam-DeVoe/recursive-property-thread-safety</li>
<li><a href=""><code>0bb0f2f</code></a> drop more 3.13t</li>
<li><a href=""><code>de6bd79</code></a> drop inbetween</li>
<li><a href=""><code>ff583cc</code></a> drop 313t jobs</li>
<li><a href=""><code>a5474e4</code></a> claude: re-trigger CI</li>
<li><a href=""><code>55d2b97</code></a> claude: re-trigger CI (flaky conjecture-coverage + transient scipy/OpenBLAS b...</li>
<li><a href=""><code>0a2bdae</code></a> claude: fix recursive_property thread-safety; install Python via fresh uv met...</li>
<li><a href=""><code>4641d65</code></a> Bump hypothesis version to 6.155.6 and update changelog</li>
<li><a href=""><code>7d90a93</code></a> Merge pull request <a href="">#4770</a> from Liam-DeVoe/ignore-up037</li>
<li>Additional commits viewable in <a href="https://github.com/HypothesisWorks/hypothesis/compare/hypothesis-python-6.141.1...v6.155.7">compare view</a></li>
</ul>
</details>
<br />

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `cc309ca1ca6a`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.