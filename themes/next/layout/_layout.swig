<!DOCTYPE html>
<html lang="{{ config.language }}">
<head>
  {{ partial('_partials/head/head.swig', {}, {cache: theme.cache.enable}) }}
  {% include '_partials/head/head-unique.swig' %}
  {{- next_inject('head') }}
  <title>{% block title %}{% endblock %}</title>
  {{ partial('_third-party/analytics/index.swig', {}, {cache: theme.cache.enable}) }}
  {{ partial('_scripts/noscript.swig', {}, {cache: theme.cache.enable}) }}
</head>

<body itemscope itemtype="http://schema.org/WebPage">
  <div class="container{%- if theme.motion.enable %} use-motion{%- endif %}">
    <div class="headband"></div>
    <header class="header" itemscope itemtype="http://schema.org/WPHeader">
      <div class="header-inner">{% include '_partials/header/index.swig' %}</div>
    </header>
    {{ partial('_partials/widgets.swig', {}, {cache: theme.cache.enable}) }}
     <!-- 下拉萌化BACKTOTOP START -->
       <div class="back-to-top-coo"  >
         <!-- <i class="fa fa-arrow-up"></i> -->
       </div>      
     <!-- 下拉萌化BACKTOTOP END -->      
     <!-- 头图壁纸部分 START -->
      {% set my_banner = theme.banner_pic %}    
      {% if page.banner.length > 1 %}
       {% set my_banner = page.banner %}        
      {% endif %}      

     <div class="site-brand-big" style="background-image:url( {{my_banner}} )" >
      <div class="site-brand-meta">
        <div class="custom-logo-site-title">
          <div class="brander">
            <span class="logo-line-before"><i></i>
            </span> 
            <div class="site-brand-title">
              <div id="animate" class="animate" >
                <span style="left: 256.609px; transform: translate(0px, 0px); opacity: 1;">H</span><span style="left: 349.609px; transform: translate(0px, 0px); opacity: 1;">I</span>
                <span style="left: 390.719px; transform: translate(0px, 0px); opacity: 1;">,</span>
                <span style="left: 431.625px; transform: translate(0px, 0px); opacity: 1;"> </span>
                <span style="left: 457.438px; transform: translate(0px, 0px); opacity: 1;">S</span>
                <span style="left: 543.25px; transform: translate(0px, 0px); opacity: 1;">I</span>
                <span style="left: 591.25px; transform: translate(0px, 0px); opacity: 1;">L</span>
                <span style="left: 673.156px; transform: translate(0px, 0px); opacity: 1;">I</span>
                <span style="left: 745.766px; transform: translate(0px, 0px); opacity: 1;">C</span>
                <span style="left: 821.266px; transform: translate(0px, 0px); opacity: 1;">O</span>
                <span style="left: 895.609px; transform: translate(0px, 0px); opacity: 1;">N</span>
              </div>
                <div id="guide" class="guide" >
                <span>C</span><span>I</span><span>T</span><span>O</span><span>Y</span>
                <span>C</span><span>I</span><span>T</span><span>Y</span><span>Y</span>
              </div>
            </div>
            <span class="logo-line-after"><i></i></span>
            </div>
          </div>
            <p class="site-brand-subtitle"></p>
        </div>
            <div class="site-nav-toggle-brand">
            <button><span class="btn-bar"></span> 
                <span class="btn-bar"></span> <span class="btn-bar"></span>
            </button>
      </div>
     </div> 
     <div class="site_toto">
        <img class="site_master_avatar" itemprop="image" src="https://www.z4a.net/images/2020/02/04/image6d422d4673a8633f.png" alt="silcity">
        <h2 class="site_master_description" ><span style="color: #00a7e0!important;">探索有点酷，</span><span style="color: #00a7e0!important;">记录有点意思</span></h2>
     </div>            

    <!-- 头图壁纸部分 END -->
    <main class="main">
      <div class="main-inner">
        <div class="content-wrap">
          {% include '_partials/header/sub-menu.swig' %}
          <div class="content">
            {% block content %}{% endblock %}
          </div>
          {% include '_partials/comments.swig' %}
        </div>
        {%- if theme.sidebar.display !== 'remove' %}
          {% block sidebar %}{% endblock %}
        {%- endif %}
      </div>
    </main>

    <footer class="footer">
      <div class="footer-inner">
        {{ partial('_partials/footer.swig', {}, {cache: theme.cache.enable}) }}
        {{ partial('_third-party/statistics/index.swig', {}, {cache: theme.cache.enable}) }}
      </div>
    </footer>
  </div>

  {{ partial('_scripts/index.swig', {}, {cache: theme.cache.enable}) }}
  {{ partial('_third-party/index.swig', {}, {cache: theme.cache.enable}) }}

  {%- if theme.pjax %}
    <div id="pjax">
  {%- endif %}
  {% include '_third-party/math/index.swig' %}
  {% include '_third-party/quicklink.swig' %}

  {{- next_inject('bodyEnd') }}
  {%- if theme.pjax %}
    </div>
  {%- endif %}

  <canvas class="fireworks" style="position: fixed;left: 0;top: 0;z-index: 1; pointer-events: none;" ></canvas> 
  <script type="text/javascript" src="//cdn.bootcss.com/animejs/2.2.0/anime.min.js"></script> 
  
  <script type="text/javascript" src="/js/loveClick.js"></script>

</body>
</html>
