<#macro title >Taxi Feik</#macro>
<#macro content></#macro>
<#macro css></#macro>
<#macro js></#macro>

<#macro display_page>
<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="initial-scale=1.0,user-scalable=no,maximum-scale=1">
    <meta name="apple-mobile-web-app-capable" content="yes">
    <meta name="HandheldFriendly" content="True">
    <meta name="apple-mobile-web-app-status-bar-style" content="black">
    <meta name="description" content="Taxi Feik">
    <meta name="author" content="Dalgom themes, info@dalgomcream.eu">
    <title><@title >    </@title></title>
    <link rel="shortcut icon" href="/images/favicon.png">
    <link href="/css/style.css" rel="stylesheet">
    <@css>    </@css>
</head>
<body>

<header class="header">
    <div class="top-bar">
        <div class="container">
            <ul class="social-links">
                <li><a href="http://facebook.com">Facebook</a></li>
                <li><a href="http://twitter.com">Twitter</a></li>
                <li><a href="http://linkedin.com">LinkedIn</a></li>
                <li><a href="http://instagram.com">Instagram</a></li>
            </ul>
            <button id="phone-trigger" class="phone-trigger ion-android-call"></button>
            <ul class="phones">
                <li><a href="tel:442-12-10"><span>Taxi</span> 442-12-10</a></li>
                <li><a href="tel:442-12-10"><span>Garage</span> 442-12-10</a></li>
                <li><a href="tel:442-12-10"><span>Contactanos</span> 442-12-10</a></li>
            </ul>
        </div>
    </div>
    <div id="nav-bar" class="nav-bar">
        <div class="container">
            <a href="/" class="logo"><img src="/images/logo.svg" alt="Taxi Feik"/></a>
            <button id="nav-trigger" class="nav-trigger ion-android-menu"></button>
            <nav class="main-nav">
                <ul>
                    <li class="active"><a href="/">Inicio</a></li>
                    <li><a href="/servicios">servicios</a></li>
                    <li><a href="/conductores">conductores</a></li>
                    <li><a href="/carros">carros</a></li>
                    <li><a href="/garage">garage</a></li>
                    <li><a href="/ubicaciones">localizacion</a></li>
                    <li><a href="#">paginas</a>
                        <ul>
                            <!--<li><a href="about.html">Nosotros</a></li>
                            <li><a href="testimonials.html">Testimonials</a></li>-->
                            <li><a href="/trabajos">trabajo</a></li>
                            <li><a href="/contactanos">Contactanos</a></li>
                            <!--<li><a href="404.html">Error 404</a></li>
                            <li><a href="index.html#!">Third Level Nav</a>
                                <ul>
                                    <li><a href="index.html#!">Third Level 1</a></li>
                                    <li><a href="index.html#!">Third Level 2</a></li>
                                    <li><a href="index.html#!">Third Level 3</a></li>
                                </ul>
                            </li>-->
                        </ul>
                    </li>
                </ul>
            </nav>
        </div>
    </div>
    <svg height="20" width="2560" class="pattern">
        <defs>
            <pattern id="header-pattern" x="0" y="0" width="20" height="20" patternUnits="userSpaceOnUse">
                <rect width="10" height="10"/>
                <rect x="10" y="10" width="10" height="10"/>
            </pattern>
            <mask id="header-mask" x="0" y="0" width="2560" height="20">
                <rect x="0" y="0" width="2560" height="20"/>
            </mask>
        </defs>
        <rect x="0" y="0" width="2560" height="20" id="header-image"/>
    </svg>
</header>


<!--<div class="content">-->
    <@content></@content>
<!--</div>-->

<!--Footer-->

<footer class="footer">
    <svg height="20" width="2560" class="pattern">
        <defs>
            <pattern id="footer-pattern" x="0" y="0" width="20" height="20" patternUnits="userSpaceOnUse">
                <rect width="10" height="10"/>
                <rect x="10" y="10" width="10" height="10"/>
            </pattern>
            <mask id="footer-mask" x="0" y="0" width="2560" height="20">
                <rect x="0" y="0" width="2560" height="20"/>
            </mask>
        </defs>
        <rect x="0" y="0" width="2560" height="20" id="footer-image"/>
    </svg>
    <div class="widgets">
        <div class="container">
            <div class="row">
                <div class="col-sm-12 col-md-6">
                    <div class="widget">
                        <h6>About us</h6>
                        <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Curabitur pulvinar ante eu lacinia
                            vulputate. Curabitur lacus purus, lacinia non tempor at, condimentum accumsan velit. Nam
                            quis elit a ipsum mattis mattis. In pharetra ultricies massa. Duis vel malesuada odio.</p>
                    </div>
                </div>
                <div class="col-sm-6 col-md-3">
                    <div class="widget">
                        <h6>Quick links</h6>
                        <ul class="quick-links">
                            <li class="active"><a href="/">Inicio</a></li>
                            <li><a href="/servicios">servicios</a></li>
                            <li><a href="/conductores">conductores</a></li>
                            <li><a href="/carros">carros</a></li>
                            <li><a href="/garage">garage</a></li>
                            <li><a href="/ubicaciones">localizacion</a></li>
                            <li><a href="#">Paginas</a>
                            <li><a href="/trabajos">Trabajo</a></li>
                            <li><a href="/contactanos">Contactanos</a></li>
                        </ul>
                    </div>
                </div>
                <div class="col-sm-6 col-md-3">
                    <div class="widget">
                        <h6>Contact</h6>
                        <ul class="contact">
                            <li class="hotline"><a href="tel:442-12-10">442-12-10</a></li>
                            <li class="phone"><a href="tel:212-647-0772">212-647-0772</a></li>
                            <li class="email"><a href="mailto:dalgom@club.com"</li>
                            <li class="address">4603 Oakwood Avenue<br>New York, 1001</li>
                        </ul>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <div class="credits">
        <div class="container">
            <div class="copyright">&copy; 2017 Dalgom Corporations</div>
            <ul class="social-links">
                <li><a href="htp://facebook.com">Facebook</a></li>
                <li><a href="htp://twitter.com">Twitter</a></li>
                <li><a href="htp://linkedin.com">LinkedIn</a></li>
                <li><a href="htp://instagram.com">Instagram</a></li>
            </ul>
        </div>
    </div>
</footer>


<script src="/js/email-decode.min.js"></script>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
<script src="/js/owl.carousel.min.js"></script>
<script src="/js/picker.js"></script>
<script src="/js/picker.date.js"></script>
<script src="/js/picker.time.js"></script>
<script src="/js/uber-google-maps.min.js"></script>
<script src="/js/settings.js"></script>
    <@js></@js>
</body>
</html>

</#macro>

