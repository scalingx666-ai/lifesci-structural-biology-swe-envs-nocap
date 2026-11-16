# Issue

**Title:** chore(deps): bump antd from 5.29.1 to 6.6.0

## Description

Bumps [antd](https://github.com/ant-design/ant-design) from 5.29.1 to 6.6.0.
<details>
<summary>Release notes</summary>
<p><em>Sourced from <a href="https://github.com/ant-design/ant-design/releases">antd's releases</a>.</em></p>
<blockquote>
<h2>6.6.0</h2>
<ul>
<li>🔥 Add Listy component for high-performance virtualized lists with grouping, sticky headers, and imperative scrolling. <a href="">#58724</a> <a href="https://github.com/aojunhao123"><code>@​aojunhao123</code></a></li>
<li>ConfigProvider
<ul>
<li>🆕 Add ConfigProvider <code>focusOutline</code> theme token to control shared focus outlines across Input, Select, Rate, Steps, Splitter, and other components. <a href="">#58647</a> <a href="">#58708</a> <a href="https://github.com/QDyanbing"><code>@​QDyanbing</code></a></li>
<li>🆕 Add ConfigProvider global <code>variant</code> configuration for Input.Search, Input.Password, and Input.OTP. <a href="">#58784</a> <a href="https://github.com/QDyanbing"><code>@​QDyanbing</code></a></li>
<li>🆕 Add ConfigProvider global <code>mouseEnterDelay</code> and <code>mouseLeaveDelay</code> configuration for Tooltip, Popover, and Popconfirm. <a href="">#58892</a> <a href="https://github.com/EmilyyyLiu"><code>@​EmilyyyLiu</code></a></li>
</ul>
</li>
<li>🌐 Localization
<ul>
<li>🇦🇱 Add Albanian <code>sq_AL</code> locale support. <a href="">#58618</a> <a href="https://github.com/li-jia-nan"><code>@​li-jia-nan</code></a></li>
</ul>
</li>
<li>🆕 Add Tree <code>useTree</code> for retrieving node paths and support <code>scrollTo({ autoExpand: true })</code> to expand target nodes before scrolling. <a href="">#58841</a> <a href="https://github.com/zombieJ"><code>@​zombieJ</code></a></li>
<li>🆕 Add FloatButton.BackTop <code>showProgress</code> to display the current scroll progress around the button. <a href="">#58894</a> <a href="https://github.com/ZQDesigned"><code>@​ZQDesigned</code></a></li>
<li>🆕 Add Table <code>expandable.forceRender</code> to render expanded row content before its first expansion. <a href="">#58860</a> <a href="https://github.com/nikzanda"><code>@​nikzanda</code></a></li>
<li>🆕 Add Pagination <code>components.sizeChanger</code> to customize the page-size changer, including in Table pagination. <a href="">#58831</a> <a href="https://github.com/QDyanbing"><code>@​QDyanbing</code></a></li>
<li>🆕 Add Mentions <code>popupRender</code> to customize suggestion dropdown rendering. <a href="">#58582</a> <a href="https://github.com/EmilyyyLiu"><code>@​EmilyyyLiu</code></a></li>
<li>🆕 Add Tabs <code>more.popupRender</code> to customize the overflow dropdown content. <a href="">#58651</a> <a href="https://github.com/EmilyyyLiu"><code>@​EmilyyyLiu</code></a></li>
<li>🆕 Add BorderBeam <code>count</code> to display multiple evenly distributed beams around the container border. <a href="">#58691</a> <a href="https://github.com/meet-student"><code>@​meet-student</code></a></li>
<li>🆕 Add Image <code>preview.wheel</code> to control mouse wheel zoom in preview. <a href="">#58728</a> <a href="https://github.com/EmilyyyLiu"><code>@​EmilyyyLiu</code></a></li>
<li>🆕 Add Alert <code>borderRadius</code> component token to customize its corner radius. <a href="">#57765</a> <a href="https://github.com/guoyunhe"><code>@​guoyunhe</code></a></li>
<li>🆕 Add <code>nativeElement</code> ref support to Avatar.Group, Badge.Ribbon, Breadcrumb, Calendar, Card.Grid, Card.Meta, Carousel, Descriptions, Divider, Empty, FloatButton.Group, List.Item.Meta, QRCode, Result, Skeleton, Space.Compact, Spin, Splitter, Transfer, and Watermark. <a href="">#58627</a> <a href="">#58628</a> <a href="">#58629</a> <a href="">#58630</a> <a href="">#58631</a> <a href="">#58632</a> <a href="">#58633</a> <a href="">#58634</a> <a href="">#58635</a> <a href="">#58636</a> <a href="">#58637</a> <a href="">#58638</a> <a href="">#58639</a> <a href="">#58640</a> <a href="">#58641</a> <a href="">#58642</a> <a href="">#58643</a> <a href="">#58644</a> <a href="">#58645</a> <a href="">#58667</a> <a href="https://github.com/li-jia-nan"><code>@​li-jia-nan</code></a></li>
<li>🤖 Export missing public Props and Ref types for Alert, Carousel, Cascader, Masonry, Mentions, Radio, Slider, Statistic, Table, Tabs, Tooltip, and Upload. <a href="">#58700</a> <a href="">#58798</a> <a href="https://github.com/li-jia-nan"><code>@​li-jia-nan</code></a></li>
<li>🐞 Fix semantic style precedence for Calendar, ColorPicker, DatePicker, Divider, Dropdown, Input, Masonry, Popover, Popconfirm, QRCode, Space, Spin, Tag, TimePicker, Tooltip, Typography, Badge, Drawer, FloatButton, Image, Message, Modal, Notification, Steps, Timeline, Tour, and Upload when combining ConfigProvider and component-level <code>style</code> and <code>styles</code> settings. <a href="">#58550</a> <a href="">#58564</a> <a href="https://github.com/QDyanbing"><code>@​QDyanbing</code></a></li>
<li>Select
<ul>
<li>🐞 Fix Select placeholder remaining visible when an ancestor is hidden. <a href="">#58572</a> <a href="https://github.com/QDyanbing"><code>@​QDyanbing</code></a></li>
<li>🐞 Fix Select clear icon showing a native button background in dark mode. <a href="">#58928</a> <a href="https://github.com/zombieJ"><code>@​zombieJ</code></a></li>
</ul>
</li>
<li>🐞 Fix Drawer close button remaining interactive when <code>closable.disabled</code> is enabled. <a href="">#58853</a> <a href="https://github.com/QDyanbing"><code>@​QDyanbing</code></a></li>
<li>🐞 Fix Carousel jumping to the first slide when children are dynamically added. <a href="">#58845</a> <a href="https://github.com/EmilyyyLiu"><code>@​EmilyyyLiu</code></a></li>
<li>🐞 Fix Button layout shift when the <code>loading</code> animation starts. <a href="">#58690</a> <a href="">#58712</a> <a href="https://github.com/zombieJ"><code>@​zombieJ</code></a></li>
<li>🐞 Fix Typography ellipsis tooltip closing before users can interact with its popup, and improve its hover behavior around action buttons. <a href="">#58661</a> <a href="">#58722</a> <a href="https://github.com/zombieJ"><code>@​zombieJ</code></a></li>
<li>💄 Improve Select, Tree, and Table virtual scrollbar track feedback, and support clicking the Table scrollbar track to jump. <a href="">#58625</a> <a href="">#58658</a> <a href="https://github.com/QDyanbing"><code>@​QDyanbing</code></a></li>
</ul>
<hr />
<ul>
<li>🔥 新增 Listy 高性能虚拟列表组件，支持分组、吸顶标题和命令式滚动。<a href="">#58724</a> <a href="https://github.com/aojunhao123"><code>@​aojunhao123</code></a></li>
<li>ConfigProvider
<ul>
<li>🆕 新增 ConfigProvider 主题 Token <code>focusOutline</code>，用于统一控制 Input、Select、Rate、Steps、Splitter 等组件的聚焦描边。<a href="">#58647</a> <a href="">#58708</a> <a href="https://github.com/QDyanbing"><code>@​QDyanbing</code></a></li>
<li>🆕 新增 ConfigProvider 全局配置 Input.Search、Input.Password 和 Input.OTP <code>variant</code> 的能力。<a href="">#58784</a> <a href="https://github.com/QDyanbing"><code>@​QDyanbing</code></a></li>
<li>🆕 新增 ConfigProvider 对 Tooltip、Popover 和 Popconfirm <code>mouseEnterDelay</code> 与 <code>mouseLeaveDelay</code> 的全局配置支持。<a href="">#58892</a> <a href="https://github.com/EmilyyyLiu"><code>@​EmilyyyLiu</code></a></li>
</ul>
</li>
<li>🌐 国际化
<ul>
<li>🇦🇱 新增阿尔巴尼亚语 <code>sq_AL</code> locale 本地化支持。<a href="">#58618</a> <a href="https://github.com/li-jia-nan"><code>@​li-jia-nan</code></a></li>
</ul>
</li>
<li>🆕 新增 Tree <code>useTree</code> 以获取节点路径，并支持 <code>scrollTo({ autoExpand: true })</code> 在滚动前自动展开目标节点。<a href="">#58841</a> <a href="https://github.com/zombieJ"><code>@​zombieJ</code></a></li>
<li>🆕 新增 FloatButton.BackTop <code>showProgress</code>，用于在按钮边缘展示当前滚动进度。<a href="">#58894</a> <a href="https://github.com/ZQDesigned"><code>@​ZQDesigned</code></a></li>
<li>🆕 新增 Table <code>expandable.forceRender</code>，支持在首次展开前渲染展开行内容。<a href="">#58860</a> <a href="https://github.com/nikzanda"><code>@​nikzanda</code></a></li>
<li>🆕 新增 Pagination <code>components.sizeChanger</code>，支持自定义每页条数切换器，并可用于 Table 分页。<a href="">#58831</a> <a href="https://github.com/QDyanbing"><code>@​QDyanbing</code></a></li>
<li>🆕 新增 Mentions <code>popupRender</code> 属性，支持自定义建议下拉菜单的渲染。<a href="">#58582</a> <a href="https://github.com/EmilyyyLiu"><code>@​EmilyyyLiu</code></a></li>
<li>🆕 新增 Tabs <code>more.popupRender</code>，支持自定义折叠下拉菜单内容。<a href="">#58651</a> <a href="https://github.com/EmilyyyLiu"><code>@​EmilyyyLiu</code></a></li>
<li>🆕 新增 BorderBeam <code>count</code> 属性，支持在容器边缘显示多条均匀分布的流光。<a href="">#58691</a> <a href="https://github.com/meet-student"><code>@​meet-student</code></a></li>
<li>🆕 新增 Image <code>preview.wheel</code> 属性，用于控制预览时是否启用鼠标滚轮缩放。<a href="">#58728</a> <a href="https://github.com/EmilyyyLiu"><code>@​EmilyyyLiu</code></a></li>
<li>🆕 新增 Alert <code>borderRadius</code> 组件 Token，用于自定义圆角。<a href="">#57765</a> <a href="https://github.com/guoyunhe"><code>@​guoyunhe</code></a></li>
<li>🆕 新增 Avatar.Group、Badge.Ribbon、Breadcrumb、Calendar、Card.Grid、Card.Meta、Carousel、Descriptions、Divider、Empty、FloatButton.Group、List.Item.Meta、QRCode、Result、Skeleton、Space.Compact、Spin、Splitter、Transfer 和 Watermark 的 <code>nativeElement</code> ref，用于访问各自的根 DOM 元素。<a href="">#58627</a> <a href="">#58628</a> <a href="">#58629</a> <a href="">#58630</a> <a href="">#58631</a> <a href="">#58632</a> <a href="">#58633</a> <a href="">#58634</a> <a href="">#58635</a> <a href="">#58636</a> <a href="">#58637</a> <a href="">#58638</a> <a href="">#58639</a> <a href="">#58640</a> <a href="">#58641</a> <a href="">#58642</a> <a href="">#58643</a> <a href="">#58644</a> <a href="">#58645</a> <a href="">#58667</a> <a href="https://github.com/li-jia-nan"><code>@​li-jia-nan</code></a></li>
<li>🤖 补充导出 Alert、Carousel、Cascader、Masonry、Mentions、Radio、Slider、Statistic、Table、Tabs、Tooltip 和 Upload 缺失的公开 Props 与 Ref 类型。<a href="">#58700</a> <a href="">#58798</a> <a href="https://github.com/li-jia-nan"><code>@​li-jia-nan</code></a></li>
<li>🐞 修复 Calendar、ColorPicker、DatePicker、Divider、Dropdown、Input、Masonry、Popover、Popconfirm、QRCode、Space、Spin、Tag、TimePicker、Tooltip、Typography、Badge、Drawer、FloatButton、Image、Message、Modal、Notification、Steps、Timeline、Tour 和 Upload 同时使用 ConfigProvider 与组件级 <code>style</code>、<code>styles</code> 时的语义样式优先级。<a href="">#58550</a> <a href="">#58564</a> <a href="https://github.com/QDyanbing"><code>@​QDyanbing</code></a></li>
<li>Select
<ul>
<li>🐞 修复 Select 占位文本在祖先元素隐藏时仍然可见的问题。<a href="">#58572</a> <a href="https://github.com/QDyanbing"><code>@​QDyanbing</code></a></li>
</ul>
</li>
</ul>
<!-- raw HTML omitted -->
</blockquote>
<p>... (truncated)</p>
</details>
<details>
<summary>Changelog</summary>
<p><em>Sourced from <a href="https://github.com/ant-design/ant-design/blob/master/CHANGELOG.en-US.md">antd's changelog</a>.</em></p>
<blockquote>
<h2>6.6.0</h2>
<p><code>2026-08-10</code></p>
<ul>
<li>🔥 Add Listy component for high-performance virtualized lists with grouping, sticky headers, and imperative scrolling. <a href="">#58724</a> <a href="https://github.com/aojunhao123"><code>@​aojunhao123</code></a></li>
<li>ConfigProvider
<ul>
<li>🆕 Add ConfigProvider <code>focusOutline</code> theme token to control shared focus outlines across Input, Select, Rate, Steps, Splitter, and other components. <a href="">#58647</a> <a href="">#58708</a> <a href="https://github.com/QDyanbing"><code>@​QDyanbing</code></a></li>
<li>🆕 Add ConfigProvider global <code>variant</code> configuration for Input.Search, Input.Password, and Input.OTP. <a href="">#58784</a> <a href="https://github.com/QDyanbing"><code>@​QDyanbing</code></a></li>
<li>🆕 Add ConfigProvider global <code>mouseEnterDelay</code> and <code>mouseLeaveDelay</code> configuration for Tooltip, Popover, and Popconfirm. <a href="">#58892</a> <a href="https://github.com/EmilyyyLiu"><code>@​EmilyyyLiu</code></a></li>
</ul>
</li>
<li>🌐 Localization
<ul>
<li>🇦🇱 Add Albanian <code>sq_AL</code> locale support. <a href="">#58618</a> <a href="https://github.com/li-jia-nan"><code>@​li-jia-nan</code></a></li>
</ul>
</li>
<li>🆕 Add Tree <code>useTree</code> for retrieving node paths and support <code>scrollTo({ autoExpand: true })</code> to expand target nodes before scrolling. <a href="">#58841</a> <a href="https://github.com/zombieJ"><code>@​zombieJ</code></a></li>
<li>🆕 Add FloatButton.BackTop <code>showProgress</code> to display the current scroll progress around the button. <a href="">#58894</a> <a href="https://github.com/ZQDesigned"><code>@​ZQDesigned</code></a></li>
<li>🆕 Add Table <code>expandable.forceRender</code> to render expanded row content before its first expansion. <a href="">#58860</a> <a href="https://github.com/nikzanda"><code>@​nikzanda</code></a></li>
<li>🆕 Add Pagination <code>components.sizeChanger</code> to customize the page-size changer, including in Table pagination. <a href="">#58831</a> <a href="https://github.com/QDyanbing"><code>@​QDyanbing</code></a></li>
<li>🆕 Add Mentions <code>popupRender</code> to customize suggestion dropdown rendering. <a href="">#58582</a> <a href="https://github.com/EmilyyyLiu"><code>@​EmilyyyLiu</code></a></li>
<li>🆕 Add Tabs <code>more.popupRender</code> to customize the overflow dropdown content. <a href="">#58651</a> <a href="https://github.com/EmilyyyLiu"><code>@​EmilyyyLiu</code></a></li>
<li>🆕 Add BorderBeam <code>count</code> to display multiple evenly distributed beams around the container border. <a href="">#58691</a> <a href="https://github.com/meet-student"><code>@​meet-student</code></a></li>
<li>🆕 Add Image <code>preview.wheel</code> to control mouse wheel zoom in preview. <a href="">#58728</a> <a href="https://github.com/EmilyyyLiu"><code>@​EmilyyyLiu</code></a></li>
<li>🆕 Add Alert <code>borderRadius</code> component token to customize its corner radius. <a href="">#57765</a> <a href="https://github.com/guoyunhe"><code>@​guoyunhe</code></a></li>
<li>🆕 Add <code>nativeElement</code> ref support to Avatar.Group, Badge.Ribbon, Breadcrumb, Calendar, Card.Grid, Card.Meta, Carousel, Descriptions, Divider, Empty, FloatButton.Group, List.Item.Meta, QRCode, Result, Skeleton, Space.Compact, Spin, Splitter, Transfer, and Watermark. <a href="">#58627</a> <a href="">#58628</a> <a href="">#58629</a> <a href="">#58630</a> <a href="">#58631</a> <a href="">#58632</a> <a href="">#58633</a> <a href="">#58634</a> <a href="">#58635</a> <a href="">#58636</a> <a href="">#58637</a> <a href="">#58638</a> <a href="">#58639</a> <a href="">#58640</a> <a href="">#58641</a> <a href="">#58642</a> <a href="">#58643</a> <a href="">#58644</a> <a href="">#58645</a> <a href="">#58667</a> <a href="https://github.com/li-jia-nan"><code>@​li-jia-nan</code></a></li>
<li>🤖 Export missing public Props and Ref types for Alert, Carousel, Cascader, Masonry, Mentions, Radio, Slider, Statistic, Table, Tabs, Tooltip, and Upload. <a href="">#58700</a> <a href="">#58798</a> <a href="https://github.com/li-jia-nan"><code>@​li-jia-nan</code></a></li>
<li>🐞 Fix semantic style precedence for Calendar, ColorPicker, DatePicker, Divider, Dropdown, Input, Masonry, Popover, Popconfirm, QRCode, Space, Spin, Tag, TimePicker, Tooltip, Typography, Badge, Drawer, FloatButton, Image, Message, Modal, Notification, Steps, Timeline, Tour, and Upload when combining ConfigProvider and component-level <code>style</code> and <code>styles</code> settings. <a href="">#58550</a> <a href="">#58564</a> <a href="https://github.com/QDyanbing"><code>@​QDyanbing</code></a></li>
<li>Select
<ul>
<li>🐞 Fix Select placeholder remaining visible when an ancestor is hidden. <a href="">#58572</a> <a href="https://github.com/QDyanbing"><code>@​QDyanbing</code></a></li>
<li>🐞 Fix Select clear icon showing a native button background in dark mode. <a href="">#58928</a> <a href="https://github.com/zombieJ"><code>@​zombieJ</code></a></li>
</ul>
</li>
<li>🐞 Fix Drawer close button remaining interactive when <code>closable.disabled</code> is enabled. <a href="">#58853</a> <a href="https://github.com/QDyanbing"><code>@​QDyanbing</code></a></li>
<li>🐞 Fix Carousel jumping to the first slide when children are dynamically added. <a href="">#58845</a> <a href="https://github.com/EmilyyyLiu"><code>@​EmilyyyLiu</code></a></li>
<li>🐞 Fix Button layout shift when the <code>loading</code> animation starts. <a href="">#58690</a> <a href="">#58712</a> <a href="https://github.com/zombieJ"><code>@​zombieJ</code></a></li>
<li>🐞 Fix Typography ellipsis tooltip closing before users can interact with its popup, and improve its hover behavior around action buttons. <a href="">#58661</a> <a href="">#58722</a> <a href="https://github.com/zombieJ"><code>@​zombieJ</code></a></li>
<li>💄 Improve Select, Tree, and Table virtual scrollbar track feedback, and support clicking the Table scrollbar track to jump. <a href="">#58625</a> <a href="">#58658</a> <a href="https://github.com/QDyanbing"><code>@​QDyanbing</code></a></li>
</ul>
<h2>6.5.4</h2>
<p><code>2026-08-07</code></p>
<ul>
<li>🐞 Fix Alert not showing the close button when the <code>closable</code> configuration object only contains <code>onClose</code>. <a href="">#58885</a> <a href="https://github.com/QDyanbing"><code>@​QDyanbing</code></a></li>
<li>🐞 Fix Checkbox.Group crashing when <code>options</code> contains nullish entries or values. <a href="">#58879</a> <a href="https://github.com/GuillaumeZ2SS"><code>@​GuillaumeZ2SS</code></a></li>
<li>🐞 Fix App emitting an unnecessary CSS variable warning with <code>component={false}</code>, while warning when root props cannot be applied in this mode. <a href="">#58877</a> <a href="https://github.com/li-jia-nan"><code>@​li-jia-nan</code></a></li>
<li>🐞 Fix Table selecting disabled rows on other pages when selecting all data. <a href="">#58843</a> <a href="https://github.com/QDyanbing"><code>@​QDyanbing</code></a></li>
<li>🐞 Fix Transfer deselect-all behavior after filtering. <a href="">#58844</a> <a href="https://github.com/thlovey"><code>@​thlovey</code></a></li>
<li>🐞 Fix DatePicker <code>RangePicker</code> semantic callbacks not receiving forwarded props. <a href="">#58905</a> <a href="https://github.com/QDyanbing"><code>@​QDyanbing</code></a></li>
<li>💄 Fix FloatButton.BackTop scroll animation not respecting <code>prefers-reduced-motion</code>. <a href="">#58849</a> <a href="https://github.com/li-jia-nan"><code>@​li-jia-nan</code></a></li>
<li>💄 Fix bare <code>&lt;svg&gt;</code> icons from third-party icon libraries being misaligned, missing spacing, or breaking onto separate lines in Breadcrumb, Collapse, Segmented, Tabs, and Tag. <a href="">#58862</a> <a href="">#58868</a> <a href="">#58869</a> <a href="">#58870</a> <a href="https://github.com/mohamedkhaled4053"><code>@​mohamedkhaled4053</code></a></li>
<li>💄 Fix AutoComplete disabled text not using the disabled text color. <a href="">#58838</a> <a href="https://github.com/lazerg"><code>@​lazerg</code></a></li>
<li>🤖 Fix Tour exposing unusable per-step <code>indicatorsRender</code> and <code>actionsRender</code> TypeScript definitions. <a href="">#58859</a> <a href="https://github.com/lazerg"><code>@​lazerg</code></a></li>
</ul>
<h2>6.5.3</h2>
<p><code>2026-07-31</code></p>
<!-- raw HTML omitted -->
</blockquote>
<p>... (truncated)</p>
</details>
<details>
<summary>Commits</summary>
<ul>
<li><a href=""><code>6e2124c</code></a> docs: add changelog for 6.6.0 (<a href="">#58929</a>)</li>
<li><a href=""><code>39beb68</code></a> fix(Select): remove native clear button background (<a href="">#58928</a>)</li>
<li><a href=""><code>71653ca</code></a> chore: auto merge branches (<a href="">#58927</a>)</li>
<li><a href=""><code>b1a1f8b</code></a> chore: auto merge branches (<a href="">#58924</a>)</li>
<li><a href=""><code>1c3e169</code></a> Merge branch master into feature-merge-master</li>
<li><a href=""><code>41ba18c</code></a> chore(deps): update nearform-actions/github-action-notify-twitter digest to 4...</li>
<li><a href=""><code>79547bc</code></a> chore(deps): update dependency eslint to v10.8.1 (<a href="">#58919</a>)</li>
<li><a href=""><code>7a066b1</code></a> chore(deps): update dependency <code>@​antfu/eslint-config</code> to ~9.3.0 (<a href="">#58920</a>)</li>
<li><a href=""><code>1b314a3</code></a> chore(deps): update dependency <code>@​types/jsdom</code> to v30 (<a href="">#58921</a>)</li>
<li><a href=""><code>abfbb2d</code></a> chore(deps): update dependency motion to v13 (<a href="">#58922</a>)</li>
<li>Additional commits viewable in <a href="https://github.com/ant-design/ant-design/compare/5.29.1...6.6.0">compare view</a></li>
</ul>
</details>
<br />

[![Dependabot compatibility score](https://dependabot-badges.githubapp.com/badges/compatibility_score?dependency-name=antd&package-manager=npm_and_yarn&previous-version=5.29.1&new-version=6.6.0)](https://docs.github.com/en/github/managing-security-vulnerabilities/about-dependabot-security-updates#about-compatibility-scores)

You can trigger a rebase of this PR by commenting `@dependabot rebase`.

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

> **Note**
> Automatic rebases have been disabled on this pull request as it has been open for over 30 days.

## Task

Modify the repository so that the issue described above is resolved. The repository is checked out at base commit `3ada240b96fd`. Edit files in place; the verifier captures your changes via `git diff` and scores them against an oracle patch using SWE-RL-style diff-similarity reward.