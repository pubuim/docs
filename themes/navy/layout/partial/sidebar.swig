<aside id="sidebar" role="navigation">
  <div class="sidebar-header">
    <h1 id="logo-wrap">
      <a id="logo" href="https://pubu.im/">
        <img class="logo-image" width="54" height="40" src="https://dn-facecdn.qbox.me/assets/1602030042/img/logo-sm.png" /><!--
        --></span><span class="logo-text">瀑布IM</span>
      </a>
    </h1>
    <div id="search-input-wrap" style="display: none;">
      <div id="search-input-icon">
        <i class="fa fa-search"></i>
      </div>
      <input id="search-input" placeholder="Search...">
    </div>
  </div>
  <div id="sidebar-inner">
    {% if page.layout == 'page' %}
      {{ doc_sidebar('sidebar') }}
    {% endif %}
  </div>
  <div id="lang-select-wrap" style="display: none;">
    <span id="lang-select-label"><i class="fa fa-globe"></i><span>{{ lang_name(page.lang) }}</span></span>
    <select id="lang-select" data-canonical="{{ canonical_path_for_nav() }}">
      {% for lang in site.data.languages %}
        <option value="{{ loop.key }}"{% if page.lang === loop.key %} selected{% endif %}>{{ lang_name(loop.key) }}</option>
      {% endfor %}
    </select>
  </div>
</aside>
